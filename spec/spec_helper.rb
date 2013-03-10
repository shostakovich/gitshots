path = File.expand_path(File.join(Dir.pwd, 'lib'))
$LOAD_PATH.unshift path unless $LOAD_PATH.include?(path)

RSpec.configure do |config|
  config.order = "random"
end
