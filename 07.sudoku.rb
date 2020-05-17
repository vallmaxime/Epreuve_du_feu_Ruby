res = []
i = 0
stock = File.foreach(ARGV[0]) { |line| res[i] = []; res[i] += line.chomp.split(''); i += 1; }

def solver_sudoku(res, x, y)
  for x in 0..10
    for y in 0..10
      if res[x][y] == '_'
      numbers = '123456789'
        for i in 0..10
         numbers = numbers.gsub(res[x][i], '')
        end
        for i in 0..10
          numbers = numbers.gsub(res[i][y], '')
        end
      res[x][y] = numbers
      end
    end
  end
puts res.join('').scan(/.{1,11}/m)
end

solver_sudoku(res, 0, 0)
