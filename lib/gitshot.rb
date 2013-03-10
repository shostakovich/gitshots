class Gitshot
  def self.all
    files = []
    Dir.foreach("/Users/shostakovich/.gitshots/") do |filename|
      files << filename
    end
    files.select! {|filename| filename.match(/jpg$/) }
    files.map { |file| Gitshot.new(file: file)}
  end

  attr_reader :file

  def initialize(options)
    @file = options[:file]
  end

  def path
    "/images/#{file}"
  end
end
