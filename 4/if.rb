yesno=1
while yesno!=0
	puts "Input a:\n"
	a=gets.to_i
	if (a>3)
		puts a.to_s+ "Xисло >3"
	elsif
		puts a.to_s+ "Xисло <3"
	end
puts "\ny/n?\n"
yesno=gets
puts yesno
end