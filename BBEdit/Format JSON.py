#!/usr/bin/env python3
import sys
import json

text = sys.stdin.read()
stripped_lines = ''.join(text.splitlines())
parsed_json = json.loads(stripped_lines)
json.dump(parsed_json, sys.stdout, indent=2)
print()
