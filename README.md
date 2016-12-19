# Motion::Figaro

A clone of the [Figaro](https://github.com/laserlemon/figaro) gem for RubyMotion apps.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'motion-figaro'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-figaro

## Usage

Create a YAML file for your app's configuration variables (API keys, secrets, provisioning profiles, etc.) in `config/application.yml`.

Configurations can be set globally, or for specific environments:

    GOOGLE_MAPS_API_KEY: "7381a978f7dd7f9a1117"
    BRAINTREE_KEY: "dd7f9a11177381a978f7"
    PROVISIONING_PROFILE: "/Users/Bodacious/Library/MobileDevice/Provisioning Profiles/xxx-xxxxx-xxxxx.mobileprovision"


    release:
      # This will override the general one above
      PROVISIONING_PROFILE: "/Users/Bodacious/Library/MobileDevice/Provisioning Profiles/xxx-xxxxx-xxxxx.mobileprovision"

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Bodacious/motion-figaro.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

