require 'time'

class Gitshot
  attr_reader :file

  def initialize(options)
    @file = options[:file]
  end

  def date
    date = file.match /[0-9]{4,4}-[0-9]{2,2}-[0-9]{2,2}/
    Time.parse(date.to_s)
  end

  def path
    "/images/#{file}"
  end
end
