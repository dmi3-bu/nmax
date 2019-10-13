[![Build Status](https://travis-ci.org/fixen94/nmax.svg?branch=master)](https://travis-ci.org/fixen94/nmax)

# Nmax
Outputs the longest numbers in a text stream

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax', git: 'git@github.com:fixen94/nmax.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ git clone git@github.com:fixen94/nmax.git
    $ cd nmax && gem build nmax
    $ gem install ./nmax-0.1.2.gem

## Usage

    $ cat sample_data_40GB.txt | nmax 10000

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
