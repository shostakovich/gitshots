module Nanoc3::DataSources
  class Gitshot < Nanoc3::DataSource
    identifier :gitshot

    def items
      GitshotRepository.new(APP_CONFIG['image_dir']).all
    end  
  end
end
