class GitshotRepository
  attr_reader :path
  
  def initialize(path)
    @path = path
  end

  def all
    files = []
    Dir.foreach(path) do |filename|
      files << filename
    end
    files.select! {|filename| filename.match(/jpg$/) }
    files.map { |file| Gitshot.new(file: file)}.sort { |a, b| b.date <=> a.date }
  end
  
  def by_week
    all.group_by do |file|
      file.date.strftime '%Y-%V'
    end
  end
end
