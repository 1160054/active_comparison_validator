# ActiveComparisonValidator

TODO: Delete this and the text above, and describe your gem

## Installation

Dynamically add validation for compare the column and the other column.

This gem provides a macro for comparing the column and the other column of the record.
Type of the comparable column is Date Time Numeric, and all that jazz.

```ruby
gem 'active_comparison_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_comparison_validator

## Usage

```rb
class Shop < ActiveRecord::Base
  include ActiveComparisonValidator
  comparison_validator 'open_at < close_at'
end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
