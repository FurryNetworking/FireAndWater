import lxml.etree
# Modified from a stackoverflow.
root = lxml.etree.fromstring(xmlstr)
textelem = root.find('config/version')
print textelem.text
