if (ARGV.length != 1)
  puts "Le script #{File.basename(__FILE__)} ne prend qu'un seul argument."
  exit
end

phrase = ARGV[0]
cut = phrase.split('')  #array

to_display = ""
j = 0
i = 0

for i in 0...cut.length
  if cut[i] != " "
    if j % 2 == 0
      to_display += cut[i].downcase
    else
      to_display += cut[i].upcase
    end
    j += 1
  else
    to_display += " "
  end
end

puts to_display
