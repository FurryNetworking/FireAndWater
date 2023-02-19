from lxml import etree as et
import logging
import logging.handlers

 with open('anaconda.xml', 'r') as file:
     data = file.read()

 root = et.fromstring(data)

 data_type = root.xpath('//root/version/@type')[0]
 data_type = root.find('version').get('type')

 if data_type == "integer_data":
   my_logger = logging.getLogger('MyLogger')
   my_logger.setLevel(logging.DEBUG)
   handler = logging.handlers.SysLogHandler(address = '/dev/log')
   my_logger.addHandler(handler)
   my_logger.debug('[INFO: get_version.py] Check has passed!')
   textelem = root.find('root/version')
   print textelem.text
