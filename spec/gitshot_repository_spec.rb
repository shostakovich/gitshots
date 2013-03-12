require 'spec_helper'
require 'tmpdir'
require 'tempfile'

require 'gitshot_repository'

describe GitshotRepository do
  def repo(dir)
    GitshotRepository.new(dir)
  end
  
  it 'returns a list off all gitshots in a folder' do
    Dir.mktmpdir do |dir|
      FileUtils.touch(dir + '/2013-02-22-101604.cms.jpg')
      FileUtils.touch(dir + '/2013-01-22-111604.foobar.jpg')
      
      repo(dir).all.size.should == 2
    end    
  end

  it 'only returns jpg files' do
    Dir.mktmpdir do |dir|
      FileUtils.touch(dir + '/foobar')
      
      repo(dir).all.should be_empty
    end    
  end

  it 'sorts the gitshots by date desc' do
    Dir.mktmpdir do |dir|
      FileUtils.touch(dir + '/2013-02-23-000000.abc.jpg')
      FileUtils.touch(dir + '/2013-01-22-000000.abc.jpg')
      FileUtils.touch(dir + '/2013-01-24-000000.abc.jpg')
      
      shots = repo(dir).all
      (shots[0].date > shots[1].date).should be_true
      (shots[1].date > shots[2].date).should be_true
    end
  end

  it 'groups the gitshots by week' do
    Dir.mktmpdir do |dir|
      FileUtils.touch(dir + '/2013-01-01-000000.abc.jpg')
      FileUtils.touch(dir + '/2013-01-08-000000.abc.jpg')
      
      repo(dir).by_week['2013-01'].size.should == 1
      repo(dir).by_week['2013-02'].size.should == 1
  
    end
  end
end
