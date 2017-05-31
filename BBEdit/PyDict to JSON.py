#!/usr/bin/env python3
import sys
import ast
import json

text = sys.stdin.read()
try:
    parsed_dict = ast.literal_eval(text)
    json.dump(parsed_dict, sys.stdout, indent=2)
    print()
except Exception:
    print(text, end='')
    raise
