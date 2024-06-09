const fs = require('fs');

const filePath = '../../GitBisect/Page.html'; // This will depend where you will run script
const searchString = 'Secction';

function checkFileContainsString(file, searchString) {
    fs.readFile(file, 'utf8', (err, data) => {
        if (err) {
            console.error(`Error reading file: ${err}`);
            process.exit(1); // Exit 1 as bad commit
        } else {
            if (data.includes(searchString)) {
                console.log("String found in file.");
                process.exit(1);
            } else {
                console.log("String not found in file.");
                process.exit(0);
            }
        }
    });
}

// Call the function
checkFileContainsString(filePath, searchString);