#!/usr/bin/env python3
import sys

text = sys.stdin.read()
try:
    print(''.join(text.splitlines()), end='')
except Exception:
    print(text, end='')
    raise
