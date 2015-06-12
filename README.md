# Probability [![Build Status](https://secure.travis-ci.org/ariejan/probability.png?branch=master)] (http://travis-ci.org/ariejan/probability)

Probability gives you an easy way to perform code only every so
often, based on your input.

This is great for testing purposes or in games.

## Installation

Add this line to your application's Gemfile:

    gem 'probability'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install probability

## Usage

Usage is pretty simple. Let's say you want to get a 33% chance at something.
This means a 3 out of 10 (or 33 out of 100) chance.

    3.in(10) => true    # About 33% of the time
    3.in(10) => false   # About 67% of the time

You may also supply a block, which is only executed when the 
probability conditions is true.

    3.in(10) do
      puts "w00t - 33% chance and I got it!"
    end

Probability uses SecureRandom in ruby-1.9 to generate random values.

## Running specs

    $ git clone git://github.com/ariejan/probability.git
    $ bundle install
    $ rake spec

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2012 Ariejan de Vroom

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.