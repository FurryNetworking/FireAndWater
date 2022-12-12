import * as readline from 'readline';

let rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Add version? [y/n] ', (answer) => {
            switch (answer.toLowerCase()) {
                case 'y':
                    console.log('Configuring requirements.txt before we proceed....');
                    const fs = require("fs");
                    let text = "lxml";
                    fs.writeFileSync("requirements.txt", text, function(err1) {
                        if (err1) {
                            return console.log("[ERROR] Could not setup requirements.txt.");
                        }
                        var builder = require('xmlbuilder');
                        rl.question('What is the Element version you want? ', (answer) => {
                                const version = answer.toLowerCase()
                                var xml1 = builder.create('root')
                                    .ele('version', {
                                        'type': 'integer_data'
                                    }, version)
                                    .end({
                                        pretty: true
                                    });
                                fs.writeFileSync("version.xml", xml1
                                    function(err2) {
                                        if (err2) {
                                            return console.log("[ERROR] Could not setup version.xml.");
                                        }
                                    })
                                rl.question('What is the Anaconda version you want? ', (answer) => {
                                        const ver = answer.toLowerCase()
                                        var xml2 = builder.create('root')
                                            .ele('data')
                                            .ele('version', {
                                                'type': 'integer_data'
                                            }, ver)
                                            .end({
                                                pretty: true
                                            });
                                        fs.writeFileSync("anaconda.xml", xml2
                                            function(err3) {
                                                if (err3) {
                                                    return console.log("[ERROR] Could not setup anaconda.xml.");
                                                }
                                            })
                                    };
                                });
                            break;
                            case 'n':
                            console.log('[INFO] Sorry to bother you then! :(');
                            break;
                            default:
                            console.log('[ERROR] Invalid answer!');
                        }
                        rl.close();
                    });
