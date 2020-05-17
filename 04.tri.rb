if (ARGV.length <= 1)
  puts "Le script #{File.basename(__FILE__)} prend au moins 2 arguements."
end

nums = ARGV
tab_s = nums
tab = tab_s.map(&:to_i)

switch = false

while !switch
  switch = true
  i = 0
        while i < tab.length - 1
          if tab[i] < tab[i + 1]
            temporaire = tab[i]
            tab[i] = tab[i + 1]
            tab[i + 1] = temporaire
            switch = false
          end
          i += 1
        end
end

#puts tab.class
puts tab.join(' ')
