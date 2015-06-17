require_relative '../message_formatter'

shared_examples 'info' do
	subject do
	 Object.new.tap do |o|
	 	o.extend(described_class)
	 end
	end

	let(:msg) { 'test' }

	let(:level) { 'info' }

	it 'outputs the formatted message' do
		expect(subject.send("#{level}", msg)).to eq("#{level}: #{msg}")
	end
end

describe MessageFormatter do

	context '#info' do
		it_behaves_like 'info'
	end

	context '#warn' do
		it_behaves_like 'info' do
			let(:level) { 'warn' }
		end
	end

	context '#error' do
		it_behaves_like 'info' do
			let(:level) { 'error' }
		end
	end

end