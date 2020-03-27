#!/usr/bin/env python3
import ast
import pprint
import sys


text = sys.stdin.read()
try:
    parsed_dict = ast.literal_eval(text)
    pprint.pprint(parsed_dict)
    print()
except Exception:
    print(text, end='')
    raise
