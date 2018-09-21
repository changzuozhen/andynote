const express = require('express')
const app = express()
var http = require('http');
var fs = require('fs');
var path = require('path');
var process = require('child_process');
var exec = require('child_process').exec;

// app.use(express.static('_book'))

app.all('/secret', function(req, res, next) {
  console.log('Accessing the secret section ...')
  res.send(req.params)
  next() // pass control to the next handler
})

app.get('/', function(req, res) {
  res.send('root')
})

// This route path will match requests to /about.
app.get('/about', function(req, res) {
  res.send('about')
})

// This route path will match requests to /random.text.
app.get('/random.text', function(req, res) {
  res.send('random.text')
})

// Here are some examples of route paths based on string patterns.
// This route path will match acd and abcd.
app.get('/ab?cd', function(req, res) {
  res.send('ab?cd')
})

// This route path will match abcd, abbcd, abbbcd, and so on.
app.get('/ab+cd', function(req, res) {
  res.send('ab+cd')
})

// This route path will match abcd, abxcd, abRANDOMcd, ab123cd, and so on.
app.get('/ab*cd', function(req, res) {
  res.send('ab*cd')
})

// This route path will match /abe and /abcde.
app.get('/ab(cd)?e', function(req, res) {
  res.send('ab(cd)?e')
})

// Examples of route paths based on regular expressions:
// This route path will match anything with an “a” in it.
app.get(/a/, function(req, res) {
  res.send('/a/')
})

// This route path will match butterfly and dragonfly, but not butterflyman, dragonflyman, and so on.
app.get(/.*fly$/, function(req, res) {
  res.send('/.*fly$/')
})

// Route path: /users/:userId/books/:bookId
// Request URL: http://localhost:3000/users/34/books/8989
// req.params: { "userId": "34", "bookId": "8989" }
app.get('/users/:userId/books/:bookId', function(req, res) {
  res.send(req.params)
})


app.get('/example/a', function(req, res) {
  res.send('Hello from A!')
})

// More than one callback function can handle a route (make sure you specify the next object). For example:
app.get('/example/b', function(req, res, next) {
  console.log('the response will be sent by the next function ...')
  next()
}, function(req, res) {
  res.send('Hello from B!')
})

// An array of callback functions can handle a route. For example:
var cb0 = function(req, res, next) {
  console.log('CB0')
  next()
}

var cb1 = function(req, res, next) {
  console.log('CB1')
  next()
}

var cb2 = function(req, res) {
  res.send('Hello from C!')
}

app.get('/example/c', [cb0, cb1, cb2])

// A combination of independent functions and arrays of functions can handle a route. For example:
var cb0 = function(req, res, next) {
  console.log('CB0')
  next()
}

var cb1 = function(req, res, next) {
  console.log('CB1')
  next()
}

app.get('/example/d', [cb0, cb1], function(req, res, next) {
  console.log('the response will be sent by the next function ...')
  next()
}, function(req, res) {
  res.send('Hello from D!')
})


app.listen(3000, () => console.log('Example app listening on port 3000!'))