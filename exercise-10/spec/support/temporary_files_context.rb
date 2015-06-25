require 'tmpdir'
require 'fileutils'

shared_context :temporary_files do
  def scratch_dir
    @scratch_dir ||= begin
      Dir.mktmpdir
    end
  end

  def touch_file filename
    FileUtils.touch("#{scratch_dir}/#{filename}")
  end
end