import subprocess
from treelib import Node, Tree

tree = Tree()

def get_children(code):
    cdl = subprocess.run(["pgrep", '-P', code], stdout=subprocess.PIPE).stdout.decode('utf-8').split("\n")
    if len(cdl) > 0:
        for cd in cdl:
            if len(cd) > 0:
                tree.create_node(cd, cd, parent=code)
                get_children(cd)



tree.create_node("0", "0")
zero = get_children("0")

tree.show()

