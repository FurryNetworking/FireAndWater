#include <cppfs/fs.h>
#include <cppfs/FileHandle.h>
#include "rapidxml/rapidxml.hpp"
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
using namespace std;
using namespace rapidxml;
int main() {
  FileHandle dest;
  int scapegoat = 0;
  FileHandle file = fs::open("anaconda.xml");
  FileHandle dir  = fs::open("/home/fireandwater/xml/data/node/0/");
  if (!dir.isDirectory()) dir.createDirectory();
  dest = dir.open("anaconda.xml");
  file.createSymbolicLink(dest);
  ifstream theFile ("/home/fireandwater/xml/data/node/0/anaconda.xml");
  vector<char> buffer((istreambuf_iterator<char>(theFile)), istreambuf_iterator<char>());
  buffer.push_back('\0'); 
  doc.parse<0>(&buffer[scapegoat]);
  root_node = doc.first_node("root");
  xml_node<> * data_node = root_node->first_node("data");
  xml_node<> * version_node = data_node->first_node("version");
  string version = version_node->value();
  string initial = "anaconda"
  string after = "-Linux-x86_64.sh"
  string combined = initial + version + after;
  FileHandle filetodelete = fs::open(combined.c_str());
  filetodelete.remove();
  return scapegoat;
}
