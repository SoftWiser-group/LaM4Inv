from z3 import *
set_param('parallel.enable', True)
from Config import config
from Utilities.TimeController import time_limit_calling

class Counterexample:
    kind = "?"
    assignment = {}


class SMT_verifier:
    tpl = []

    def initTpl(self, path2SMT):
        vc_sections = [""]
        with open(path2SMT, 'r') as vc:
            for vc_line in vc.readlines():
                if "SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop" in vc_line:
                    vc_sections.append("")
                else:
                    vc_sections[-1] += vc_line
        assert len(vc_sections) == 5

        self.tpl = [vc_sections[0]]

        for i in range(2, 5):
            self.tpl.append(vc_sections[1] + vc_sections[i])

    def verify(self, Can_I, path2SMT):
        sol = z3.Solver()
        sol.set(auto_config=False)
        sol.set("timeout", config.SMT_CHECK_TIME)

        if len(self.tpl) <= 0:
            self.initTpl(path2SMT)

        Can_I_smt = Can_I[7:-1]
        for i in range(3):
            s = self.tpl[0] + Can_I_smt + self.tpl[i + 1]  # wait to see
            sol.reset()
            try:
                decl = z3.parse_smt2_string(s)
            except:
                print("SMTLIB2 False!")
                return None, False
            sol.add(decl)
            r = time_limit_calling(sol.check, (), config.SMT_CHECK_TIME)

            kind = "?"
            ce = {}
            if z3.sat == r:  # we got a counterexample
                m = sol.model()
                if i == 0 or i == 2:
                    for x in m:
                        v = str(x)
                        if v in ['inv-f', 'post-f', 'pre-f', 'trans-f', 'div0', 'mod0']:
                            continue
                        if "_" in v:
                            continue
                        ce[v] = m[x]
                    kind = "p" if i == 0 else "n"
                else:
                    m1, m2 = {}, {}
                    for x in m:
                        v = str(x)
                        if v in ['inv-f', 'post-f', 'pre-f', 'trans-f', 'div0', 'mod0']:
                            continue
                        if "_" in v:
                            continue
                        const = m[x]
                        if v.endswith("!"):
                            m2[v[:-1]] = const
                        else:
                            m1[v] = const
                    ce = (m1, m2)
                    kind = "i"
                counterexample = Counterexample()
                counterexample.kind = kind
                counterexample.assignment = ce
                return counterexample,True

            elif z3.unknown == r: # timeout
                print(i)
                raise TimeoutError("SMT Checking is OOT:    " + str(Can_I))

            else:
                assert z3.unsat == r #we pass this one, continue
                continue

        return None,True  # we find the answer




