#!/usr/bin/env node
const { exec } = require("child_process");

exec(`npm run yamldocs ${process.argv.slice(2).join(" ")}`, (err, stdout, stderr) => {
    if (err) {
      throw Error (err.message);
      process.exit(1);
      return;
    }
    console.info(stdout);
});