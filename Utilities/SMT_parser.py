import z3


def getConstsFromZ3Exp(smt_exp):
    frontiers = []
    frontiers.append(smt_exp)
    res = []
    while len(frontiers) > 0:
        curNode = frontiers[0]
        frontiers.__delitem__(0)
        if curNode.sort() == z3.IntSort() and 'const_' in curNode.decl().name():
            res.append(str(curNode))
        frontiers.extend(curNode.children())
    return res



