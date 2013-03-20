ENV['NANOC_ENV'] ||= 'production'
APP_CONFIG ||= YAML.load_file("./config_#{ENV['NANOC_ENV']}.yml")
