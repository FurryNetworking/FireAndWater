var xml2js = require('xml2js');
var parser = new xml2js.Parser();
import { readFileSync } from 'fs';
const file = readFileSync('./anaconda.xml', 'utf-8');
parser.parseString(file, function (err, result) {
    console.log(result['root']['data']['version']);
});
