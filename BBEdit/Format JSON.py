#!/usr/bin/env python3
import sys
import json

text = sys.stdin.read()
try:
    parsed_json = json.loads(text)
    json.dump(parsed_json, sys.stdout, indent=2)
    print()
except Exception:
    print(text, end='')
    raise
