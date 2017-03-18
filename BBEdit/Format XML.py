#!/usr/bin/env python3
import sys
import xml.dom.minidom as minixml

parsed_xml = minixml.parse(sys.stdin)
print(parsed_xml.toprettyxml(indent='  '), end='')
