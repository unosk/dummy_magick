require 'dummy_magick/version'
require 'base64'
require 'mini_magick'

module DummyMagick
  IMAGE_1X1 = Base64.decode64('R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==').freeze

  ##
  # Generate a dummy image file
  #
  # @param  width  [Integer] The width of the image.
  # @param  height [Integer] The height of the image.
  # @param  format [String]  The file extension of the image format. Like 'jpg', 'png', 'gif' etc.
  # @return [File]
  def self.dummy_image_file(width, height, format = :jpg)
    img = ::MiniMagick::Image.create('gif') { |f| f.write IMAGE_1X1 }
    img.resize("#{width}x#{height}!")
    img.format(format)
    File.new(img.path)
  end
end
