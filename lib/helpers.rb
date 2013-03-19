def weekly_shots
  GitshotRepository.new(APP_CONFIG['image_dir']).by_week
end
