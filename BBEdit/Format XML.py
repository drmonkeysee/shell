#!/usr/bin/env python3
import sys
import xml.dom.minidom as minixml


text = sys.stdin.read()
try:
    parsed_xml = minixml.parseString(text)
    print(parsed_xml.toprettyxml(indent='  '), end='')
except Exception:
    print(text, end='')
    raise
