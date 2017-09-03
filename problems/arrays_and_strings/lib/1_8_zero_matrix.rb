=begin
write an algorithm such that if an element in an M x N matrix is 0,
its entire row and column are set to 0
=end

def zero_matrix(mtx)
  cols = {}
  rows = {}

  mtx.length.times do |col|
    mtx[col].length.times do |row|
      if mtx[col][row] == 0
        cols[col] = true
        rows[row] = true
      end
    end
  end

  mtx.length.times do |col|
    mtx[col].length.times do |row|
      mtx[col][row] = 0 if cols[col] || rows[row]
    end
  end

  mtx
end

# time complexity = O(N*M)
# run through whole matrix twice with N*M total elements and drop the
# 2 coefficient
# first iteration = mark which rows/columns contain a 0
# second iteration = change values if element is in a row/col that has a 0
