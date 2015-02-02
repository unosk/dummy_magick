# DummyMagick

Generate a dummy image file for development

[![Build Status](https://travis-ci.org/unosk/dummy_magick.svg?branch=master)](https://travis-ci.org/unosk/dummy_magick)

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'dummy_magick'
end
```

And then execute:

```
$ bundle
```

## Usage

```ruby
##
# Generate a dummy image file
#
# @param  width  [Integer] The width of the image.
# @param  height [Integer] The height of the image.
# @param  format [String]  The file extension of the image format. Like 'jpg', 'png', 'gif' etc.
# @return [File]
DummyMagick.dummy_image_file(100, 100, :png)
```

### with CarrierWave
```ruby
class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end

User.new
User.avator = DummyMagick.dummy_image_file(100, 100, :png)
User.save!
```

### on RSpec Controller Test
```ruby
image_file = DummyMagick.dummy_image_file(100, 100, :png)
post :create, avatar: fixture_file_upload(image_file.path, 'image/png')
```

### on Capybara
```ruby
image_file = DummyMagick.dummy_image_file(100, 100, :png)
attach_file 'Upload file', image_file.path
```

## Contributing

1. Fork it ( https://github.com/unosk/dummy_magick/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
