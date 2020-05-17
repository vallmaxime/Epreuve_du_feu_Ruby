if (ARGV.length != 2)
  puts "Le script #{File.basename(__FILE__)} prend 2 agruments, si ARGV[0] se trouve dans ARGV[1],
  le script renvoi la position du premier index de ARGV[0] dans ARGV[1]."
  exit
end

def import_file(file)
  i = 0
  res = []
  File.foreach(file) { |line| res[i] = []; res[i] += line.chomp.split(''); i += 1 }
  return (res)
end

file1 = import_file(ARGV[0])
file2 = import_file(ARGV[1])

def rectangle(file1, file2)
  for x in 0...file2.length                         # pour index grand array de file2
    for y in 0...file2[x].length                    # pour index petit array de file2
      if file2[x][y] == file1[0][0]
        for i in 0...file1.length                   # pour index grand array de file1
          for j in 0...file1[i].length              # pour index petit array de file1
            if (file1[i][j] != file2[x + i][y + j])
              return false
            end
          end
        end
      puts "#{y},#{x}"
      return true
      end
    end
  end
end

if rectangle(file1, file2)
  #La fonction retourne l'adresse y, x du debut du petit rectangle dans le grand.
else
  puts "No magic square"
end
