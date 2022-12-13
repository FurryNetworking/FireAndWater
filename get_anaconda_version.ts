var xml2js = require('xml2js');
var parser = new xml2js.Parser();
var xpath = require("xml2js-xpath");
 
import { readFileSync } from 'fs';
const options = {
        explicitArray: false,
        ignoreAttrs: true
    };
const file = readFileSync('./anaconda.xml', 'utf-8');
xml2js.parseString(file, options, function(err, json) {

  // find all elements: returns xml2js JSON of the element
  var matches = xpath.find(json, "//root");
  console.log(matches[0]['version'])
  // find the first element, and get its id:
  var matches = xpath.evalFirst(json, "//root//", "version");
  //console.log(matches.fname)
});
