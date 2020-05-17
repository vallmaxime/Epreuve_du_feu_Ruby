if (ARGV.length != 1)
  puts "Le script #{File.basename(__FILE__)} ne prend qu'un seul argument."
  exit
end

my_arg = ARGV[0].to_i

i = 0
while (i < my_arg.to_i)
  print ' ' * ((my_arg - 1) -i)
  print '#' * (1 + i)
  print "\n"
  i += 1
end
