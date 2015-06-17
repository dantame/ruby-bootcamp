

class Document
  @@font = 'arial'

  def font
    @@font
  end

  def save(*args)
    if rand(4) == 1
      "pass"
    else
      "fail"
    end

    return 'value1','value2','value3','value4'
  end

  end

class Blog < Document
  @@font = 'verdana'
end

class Letter < Document
  @@font = 'Times new roman'


end

document = Document.new
#document.save '~', 'new_doc', '.txt'
value1, value2, value3, value4 = document.save({ :filename => 'new_doc', :path => '~', :ext => '.txt' })
puts value2

#class Point
#	attr_accessor :x, :y
#
#	def initialize x, y
#		@x, @y = x, y
#  end
#
#  def add
#
#  end
#
#	def + input
#		@x += input.x
#		@y += input.y
#		self
#	end
#end