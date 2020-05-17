if (ARGV.length != 1)
  puts "Le script #{__FILE__} ne prend qu'un seul argument."
  exit
end
# Ce code marche seulement avec un nombre entier

my_arg = ARGV[0].to_i

def factoriel(x)
  if x < 1
      "Please, give a positive number of minimum value 1"
  elsif x == 1           # des que ma recursive arrive a 1, cela stop la boucle.
      1
  else
      x * factoriel(x - 1)
    end
end

puts factoriel(my_arg)


=begin
Comprendre une factoriel (x! = factoriel de x):
1! = 1
2! = 1 × 2 = 2
3! = 1 × 2 × 3 = 6
4! = 1 × 2 × 3 × 4 = 24
10! = 1 × 2 × 3 × 4 × 5 × 6 × 7 × 8 × 9 × 10 = 3 628 800
                     ..........
une récursive est une methode qui s'appelle elle meme.

.......................

-> Le code part de mon argument et redessend en 'bouclant' jusqu'a 0 pour y trouver sa source, pour imager mes mots:

_                           _
 \            4           /        # 4 * factoriel(4 - 1)
  _                     _
   \         3        /            # 3 * factoriel(3 - 1)
    _               _
     \      2     /                # 2 * factoriel(2 -1)
      _          _
       \   1   /                   # 1 * factoriel(1 - 1)
         _    _
          \0/                      # arrivé au fond, je renvois le resultat du calcule dans le shell: 24

=end
