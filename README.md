# `Object#present_then(&block)`


## Installation


```ruby
gem 'present_then'
```


## Usage

```ruby
foo = nil
foo.present_then { |foo| puts "val: #{foo}" }
# => output nothing

foo = 1
foo.present_then { |foo| puts "val: #{foo}" }
# => "val: 1"
```

```erb
<% somemodel.some_slow_getter.present_then do |val| %>
  <div><%= val %></div>
<% end %>
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
