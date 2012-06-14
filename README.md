# Blaze

[![Build Status](https://secure.travis-ci.org/iain/blaze.png?branch=master)](http://travis-ci.org/iain/blaze)

Just a tiny simple gem which lets you speak on Campfire. No runtime dependencies!

## Installation

Add this line to your application's Gemfile:

    gem 'blaze'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blaze

## Usage

Configure blaze:

``` ruby
require 'blaze'

Blaze.configure do |config|
  config.account = "your-subdomain"
  config.room_id = 12345
  config.token   = "abcd"
  config.ssl     = true
end
```

And speak:

``` ruby
Blaze.speak "hello there!"
```

## Coming up in v1.0

A way to allow you to spam more rooms in one Ruby process.

This would probably look something like:

``` ruby
client = Blaze::Client.new do |client|
  client.account = "your-subdomain"
  client.room_id = 12345
  client.token   = "abcd"
  client.ssl     = true
end

client.speak "Hello"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
