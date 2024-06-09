const fs = require('fs');

// Parameters: Path to the file and the string to search for
const filePath = '../../GitBisect/Page.html'; // Change this to your target file path
const searchString = 'Secction'; // Change this to the string you're looking for

// Function to read file and search for a string
function checkFileContainsString(file, searchString) {
    fs.readFile(file, 'utf8', (err, data) => {
        if (err) {
            console.error(`Error reading file: ${err}`);
            process.exit(1); // Exit with error if file reading fails
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