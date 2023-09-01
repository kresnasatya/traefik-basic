const http = require('http');
const fs = require('fs').promises;
// Set host value to 0.0.0.0 to listen to any host outside docker
// Link: https://serverfault.com/questions/1084915/still-confused-why-docker-works-when-you-make-a-process-listen-to-0-0-0-0-but-no
const host = '0.0.0.0';
const port = 8082;

const requestListener = function (req, res) {
    fs.readFile(__dirname + "/index.html")
        .then(contents => {
            res.setHeader("Content-Type", "text/html");
            res.writeHead(200);
            res.end(contents);
        })
        .catch(err => {
            res.writeHead(500);
            res.end(err);
            return;
        });
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});