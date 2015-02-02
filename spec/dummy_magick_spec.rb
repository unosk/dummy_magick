require 'spec_helper'

describe DummyMagick do
  it 'has a version number' do
    expect(DummyMagick::VERSION).not_to be nil
  end

  describe '.dummy_image_file' do
    subject { DummyMagick.dummy_image_file(10, 20, :png) }
    let(:image) { MiniMagick::Image.new(subject.path) }

    it 'returns an instance of File' do
      expect(subject).to be_an_instance_of(File)
    end

    it 'generates an image with given size' do
      expect(image.dimensions).to eq [10, 20]
    end

    it 'generates an image with given format' do
      expect(File.extname(subject.path)).to eq '.png'
      expect(image.mime_type).to eq 'image/png'
    end
  end
end
