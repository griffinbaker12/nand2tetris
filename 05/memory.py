#!/Library/Frameworks/Python.framework/Versions/3.12/bin/python3

x = 0x4000
y = 0x6000

pad_len = len("keyboard") - len("screen")
print(f"{'Base screen:'.ljust(len('Base screen:') + pad_len)} {x:15b}")
print(f"Base keyboard: {y:15b}")

print()

a_instr = "111accccccdddjjj"
instr_map = [f"{i.ljust(3)}" for i in a_instr]
print("".join(map(str, instr_map)))
idx_map = [f"{i:02d} " for i in range(len(a_instr) - 1, -1, -1)]
print("".join(map(str, idx_map)))
