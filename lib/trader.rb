def day_trader(arr)
	puts  "entrez les prix svp" if arr.empty?
	
	rv= arr.max
	puts "la meilleur jour a la revente est " + rv.to_s
	ach= arr.min 
	puts "la meilleur jour a lachat est " + ach.to_s
	ind_rv= arr.index(rv)
	puts "position de la meilleur jour a la revente est " + ind_rv.to_s
	ind_ach= arr.index(ach)
	puts "position de la meilleur jour a lachat est " + ind_ach.to_s
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
