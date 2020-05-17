if (ARGV.length != 2)
  puts "Le script #{File.basename(__FILE__)} prend 2 agruments, un mot à comparer, et un fichier.txt avec la liste de mot a comparer."
  exit
end

mot = ARGV[0]
file = File.open(ARGV[1])

def strTri(x)
  return x.to_s.downcase.gsub(/[^a-zA-Z]/, '').split('').sort().join('')
end


file.each_line do |line|
  if  strTri(mot) == strTri(line)
    puts line
  end
end
