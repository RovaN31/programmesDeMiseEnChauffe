def day_trader(arr)
	puts  "entrez les prix svp" if arr.empty?
	#on récupère la valeur maximum des prix parce que lorsque le prix augmente, ce sera mieux de revendre l'objet pour gagner plus
	rv= arr.max
	puts "la meilleur jour a la revente est " + rv.to_s
	#on récupère la valeur minimum des prix car c'est mieux d'acheter les choses à bon prix
	ach= arr.min 
	puts "la meilleur jour a lachat est " + ach.to_s
	ind_rv= arr.index(rv)
	puts "position de la meilleur jour a la revente est " + ind_rv.to_s
	ind_ach= arr.index(ach)
	puts "position de la meilleur jour a lachat est " + ind_ach.to_s
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
