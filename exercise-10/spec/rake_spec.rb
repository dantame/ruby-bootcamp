require 'rake'
describe 'Rakefile' do

  include_context :temporary_files

  before do
    Rake.application = Rake::Application.new
    Rake.application.init
    Rake.application.add_import 'rakelib/exercise10/list.rake'
    Rake.application.load_imports
  end

  context 'List' do

    let (:csv_file) { 'csv1.csv' }
    let (:files) { %W(#{csv_file} image1.jpg text_file1.txt) }

    before :each do
      files.each {|f|touch_file f}
    end

    it 'lists files in a directory with the default glob' do
      expected_output = "#{files.join("\n")}\n"
      expect { Rake.application["exercise10:list"].invoke(scratch_dir) }.to output(expected_output).to_stdout
    end

    it 'lists files in a directory filtered by the *.csv glob' do
      expected_output = "#{csv_file}\n"
      expect { Rake.application["exercise10:list"].invoke(scratch_dir, '*.csv') }.to output(expected_output).to_stdout
    end
  end
end
