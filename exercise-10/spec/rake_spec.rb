require 'rake'

describe 'Rakefile' do

  before do
    Rake.application = Rake::Application.new
    Rake.application.init
    Rake.application.load_rakefile
  end

  context 'List' do
    it 'lists files in a directory with the default glob' do
msg =<<LIST
resources/csv_file1.csv
resources/csv_file2.csv
resources/csv_file3.csv
resources/csv_file4.csv
resources/csv_file5.csv
resources/image1.jpg
resources/image2.jpg
resources/image3.jpg
resources/image4.jpg
resources/image5.jpg
resources/text_file1.txt
resources/text_file2.txt
resources/text_file3.txt
LIST

      expect{Rake.application["exercise10:list"].invoke('resources/')}.to output(msg).to_stdout
    end

    it 'lists files in a directory filtered by the *.csv glob' do
msg =<<LIST
resources/csv_file1.csv
resources/csv_file2.csv
resources/csv_file3.csv
resources/csv_file4.csv
resources/csv_file5.csv
LIST

      expect{Rake.application["exercise10:list"].invoke('resources/', '*.csv')}.to output(msg).to_stdout
    end
  end
end
