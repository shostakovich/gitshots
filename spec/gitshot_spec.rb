require 'spec_helper'
require 'gitshot'

describe Gitshot do
  it 'contains an imagepath' do
    filename = 'foo.jpg'
    Gitshot.new(file: filename).path.should == "/images/#{filename}"
  end

  it 'parses the date from its filename' do
    shot = Gitshot.new(file: '2000-01-01-000000.foobar.jpg')
    shot.date.should == Time.parse('2000-01-01')
  end
end
