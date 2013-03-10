require 'spec_helper'
require 'gitshot'

describe Gitshot do
  it 'returns a list of all gitshots' do
    Gitshot.all.size > 0
  end

  it 'contains an imagepath' do
    filename = 'foo.jpg'
    Gitshot.new(file: filename).path.should == "/images/#{filename}"
  end
end
