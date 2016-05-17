module IntegrationHelpers
  def create_view_file(content)
    write_file ""
  end

  def write_file(filename, content)
    in_views_directory { File.open(filename, 'w') { |file| file.puts content } }
  end

  def in_views_directory(&block)
    FileUtils.mkdir_p views_dir
    Dir.chdir views_dir, &block
  end

  def views_dir
    File.expand_path("../dummy/app/views/handlers")
  end
end
