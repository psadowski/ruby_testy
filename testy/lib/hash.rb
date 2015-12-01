tablica = []

def haszowanie(tablica, klu)
	indeks =0
	sukces =0
	indeks = klu%103
	
	while sukces < 1 do
		if tablica[indeks] != 'NIL'
			indeks = indeks+1
			if indeks >= 103
				indeks = 0
			end	
		else
			puts indeks
			tablica[indeks] = klu
			sukces =1
		end
	end
end

(1..100).each do 
 tablica << 'NIL'
end

puts "Podaj n: "
n=gets.to_i

(1..n).each do |i|
	puts "podaj element nr: " + i.to_s
	
	klucz = gets.to_i
	
	haszowanie tablica, klucz
end

puts 'OUTPUT:'
(0..103).each do |j|
	puts tablica[j]
end







