require 'nokogiri'
xml_str = File.read("version.xml")
doc = Nokogiri::XML(xml_str)
thing = doc.at_xpath('//root')
data = thing.at_xpath('//version').content
begin
  File.open("element-" + data + "tar.gz", 'r') do |f|
    # do something with file
    File.delete(f)
  end
rescue Errno::ENOENT
end
