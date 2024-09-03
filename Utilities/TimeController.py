import threading
import time
from time import sleep

import z3


class MyThread(threading.Thread):
    def __init__(self, target, args=()):
        """
        why: 因为threading类没有返回值,因此在此处重新定义MyThread类,使线程拥有返回值
        此方法来源 https://www.cnblogs.com/hujq1029/p/7219163.html?utm_source=itdadao&utm_medium=referral
        """
        super(MyThread, self).__init__()
        self.func = target
        self.args = args

    def run(self):
        # 接受返回值
        self.result = self.func(self.args)

    def get_result(self):
        # 线程不结束,返回值为None
        try:
            return self.result
        except Exception:
            return z3.unknown

def time_limit_calling(func, args, timelimit):
    t1 = MyThread(target=func, args=args)
    t1.setDaemon(True)
    t1.start()
    t1.join(timelimit)
    return t1.get_result()
