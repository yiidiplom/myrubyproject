class NewClass
  def initialize
    a=gets
    @a = a
    #@b = b
    #@c = c
  end
  
  def output
    puts "a = #{@a}"
    #puts "b = #{@b}"
    #puts "c = #{@c}"
  end
end
   
newclass = NewClass.new
newclass.output
  