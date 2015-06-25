namespace :exercise10 do
	desc 'Lists files in a directory, optionally you can pass a glob to filter by in the format *.ext'
	task :list, [:path, :glob] do |t, args|
		args.with_defaults(glob: '*.*')

		Dir.chdir(args[:path]) do
		  puts Rake::FileList.new(args[:glob])
		end

		# puts `ls #{args['path']}#{args['glob']}`
	end
end