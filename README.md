# Probability

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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
