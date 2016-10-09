module IntegrationHelpers

  include do
    before do
      cleanup_artifacts
    end
  end

  def create_view_file(heredoc_content)
    write_file "integration.css.scerb", heredoc_content.strip_heredoc
  end

  def write_file(filename, content)
    in_views_directory { File.open(filename, 'w') { |file| file.puts content } }
  end

  def in_views_directory(&block)
    FileUtils.mkdir_p views_dir
    Dir.chdir views_dir, &block
  end

  def views_dir
    File.expand_path("spec/dummy/app/views/handlers")
  end

  def cleanup_artifacts
  end
end
