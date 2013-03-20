require 'time'
require 'nanoc'
class Gitshot < Nanoc3::Item
  attr_reader :file

  def initialize(options)
    @file = options[:file]
    super(file, {}, detail_page_path)
  end

  def date
    date = file.match /[0-9]{4,4}-[0-9]{2,2}-[0-9]{2,2}/
    Time.parse(date.to_s)
  end

  def detail_page_path
    "/gitshot/#{file.gsub(/\.jpg$/,'')}"
  end

  def path
    "/images/#{file}"
  end

  def raw_content
    <<-TEMPLATE
      <div class="thumbnail">
        <img width="100%" src='#{path}' \>
        <div class="caption info">
          Date: #{date}
        </div>
      </div>
    TEMPLATE
  end
end
