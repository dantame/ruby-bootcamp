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
csv_file1.csv
csv_file2.csv
csv_file3.csv
csv_file4.csv
csv_file5.csv
image1.jpg
image2.jpg
image3.jpg
image4.jpg
image5.jpg
text_file1.txt
text_file2.txt
text_file3.txt
LIST

      expect{Rake.application["exercise10:list"].invoke('resources/')}.to output(msg).to_stdout
    end

    it 'lists files in a directory filtered by the *.csv glob' do
msg =<<LIST
csv_file1.csv
csv_file2.csv
csv_file3.csv
csv_file4.csv
csv_file5.csv
LIST

      expect{Rake.application["exercise10:list"].invoke('resources/', '*.csv')}.to output(msg).to_stdout
    end
  end
end
