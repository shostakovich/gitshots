require 'fileutils'
SSH_SERVER='192.168.178.33'
IMAGE_DIR='/Users/shostakovich/.gitshots'

task :default do
  sh 'bundle exec rspec && bundle exec cucumber'
end

task :gen_deploy => :generate do
  sh "rsync -avz output/ -e ssh #{SSH_SERVER}:/var/www/vhosts/git.mug.im/"
end

task :generate => :compress_images do
  sh 'nanoc compile'
end

task :compress_images => :copy_images do
  list = FileList.new('./content/images/*.jpg')
  list.each do |src|
    sh "mogrify -resize 460 #{src}"
  end
end


task :copy_images do
  list = FileList.new("#{IMAGE_DIR}/*.jpg")
  list.each do |original|
    targetDir='./content/images/'
    target = File.join targetDir, File.basename(original)
    cp original, target
  end
end
