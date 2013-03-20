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

## Credits

This project is inspired by [Katrina Owen](https://gist.github.com/kytrinyx/4489037). She had the idea of taking snapshots of yourself upon every commit.
