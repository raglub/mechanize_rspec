# MechanizeRspec

This gem should be used when you test Mechanize offline

## Installation

Add this line to your application's Gemfile:

    gem 'mechanize_rspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mechanize_rspec

## Usage

### Set up and Example

In your application you should set up

    > require 'mechanize_rspec'
    > Mechanize::Config.dirname = 'dir_name'

Where in dir_name you should have filese:

    location.yml
    file_1.html
    file_2.html
    ...
    file_n.html

Where in file 'location.yml' should be:

    > ---
    > 'http://HOST/index.html': '/file_1.html'
    > 'http://HOST/pl/index.html': '/file_2.html'
    > ...
    > 'http://HOST/index.html': '/file_n.html'

### Methods

Show all used urls (is useful when we want compare with file location.yml)

    > Mechanize.get("http://www.test.pl")
    > Mechanize::Config.uris.inspect #=> ["http://www.test.pl"]

