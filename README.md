## Daily pictures of myself during commits

Demo at: [git.mug.im](http://git.mug.im).

[![Code Climate](https://codeclimate.com/github/shostakovich/gitshots.png)](https://codeclimate.com/github/shostakovich/gitshots) [![Build
Status](https://travis-ci.org/shostakovich/gitshots.png)](https://travis-ci.org/shostakovich/gitshots)

## Installation

### Install imagesnap

    brew install imagesnap

### Install the Git post-commit Hook

    #!/bin/sh
    timestamp=$(date +%Y-%m-%d-%H%M%S)
    imagesnap -q $HOME/.gitshots/$timestamp.$(basename `pwd`).jpg &

### Install the website generator

    git clone https://github.com/shostakovich/gitshots.git
    cd gitshots
    bundle install

## License

Copyright (c) 2013 Robert Curth

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Credits

This project is inspired by [Katrina Owen](https://gist.github.com/kytrinyx/4489037). She had the idea of taking snapshots of yourself upon every commit.
