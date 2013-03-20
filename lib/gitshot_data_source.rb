module Nanoc3::DataSources
  class Gitshot < Nanoc3::DataSource
    identifier :gitshot

    def items
      path = '/Users/shostakovich/.gitshots/'
      GitshotRepository.new(path).all
    end  
  end
end
