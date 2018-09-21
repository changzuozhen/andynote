const express = require('express')
const app = express()
// var http = require('http');
// var fs = require('fs');
// var path = require('path');
// var process = require('child_process');
var exec = require('child_process').exec;

app.use(express.static('_book'))

// app.get('/', function(req, res, next) {
//     res.writeHead(200,{'Content-Type':'text/html'})
//     fs.readFile('./_book/index.html','utf-8',function(err,data){
//         if(err){
//         throw err ;
//         }
//         res.end(data);
//         });
// });

app.get('/rebuild', function(req, res, next) {
	console.log('rebuild!')
	var cmdStr = './rebuild.sh';
	exec(cmdStr, function(err, stdout, stderr) {
		if (err) {
			console.log('exec error: ' + stderr);
		} else {
			console.log('no error' + stdout);
		}
	});
	res.writeHead(200, {
		'Content-Type': 'text/html'
	})
	res.end("success\n");
});

app.listen(3000, () => console.log('Example app listening on port 3000!'))