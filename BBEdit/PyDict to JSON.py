#!/usr/bin/env python3
import ast
import json
import sys


text = sys.stdin.read()
try:
    parsed_dict = ast.literal_eval(text)
    json.dump(parsed_dict, sys.stdout, indent=2)
    print()
except Exception:
    print(text, end='')
    raise
