import * as readline from "readline";

let r1 = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});
r1.question("[PROMPT] Add version? [y/n] ", (answer1) => {
  if (answer1.toLowerCase() == "y") {
    console.log("[INFO] Configuring requirements.txt before we proceed....");
    const fs = require("fs");
    let text = "lxml";
    fs.writeFileSync("requirements.txt", text, function (err1: any) {
      if (err1) {
        return console.log("[ERROR] Could not setup requirements.txt.");
      }
      var builder = require("xmlbuilder");
      r1.close();
      r1.removeAllListeners();
    });
    r1.question(
      "[PROMPT] What is the Element version you want? ",
      (answer2) => {
        const version = answer2.toLowerCase();
        var builder = require("xmlbuilder");
        var xml1 = builder
          .create("root")
          .ele(
            "version",
            {
              type: "integer_data",
            },
            version
          )
          .end({
            pretty: true,
          });
        fs.writeFileSync("version.xml", xml1, function (err2: any) {
          if (err2) {
            return console.log("[ERROR] Could not setup version.xml.");
          }
          r1.close();
          r1.removeAllListeners();
        });
        r1.question(
          "[PROMPT] What is the Anaconda version you want? ",
          (answer) => {
            const ver = answer.toLowerCase();
            var xml2 = builder
              .create("root")
              .ele("data")
              .ele(
                "version",
                {
                  type: "integer_data",
                },
                ver
              )
              .end({
                pretty: true,
              });
            fs.writeFileSync("anaconda.xml", xml2, function (err3: any) {
              if (err3) {
                return console.log("[ERROR] Could not setup anaconda.xml.");
              }
            });
            r1.close();
            r1.removeAllListeners();
            var PythonShell = require("python-shell");
            PythonShell.PythonShell.run(
              "add_needed_lines.py",
              null,
              function (err: any) {
                if (err) throw err;
                console.log(
                  "[INFO] Additional requirements were configured successfully."
                );
              }
            );
          }
        );
      }
    );
  }
});
