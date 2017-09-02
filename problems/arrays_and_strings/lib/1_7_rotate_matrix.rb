=begin
# given an image represented by an NxN matrix, write a method to rotate
the image by 90 degrees. can you do this in place?
[ [1, 2, 3]
  [4, 5, 6]
  [7, 8, 9] ]

=>

[ [7, 4, 1]
  [8, 5, 2]
  [9, 6, 3] ]


=end

def rotate_matrix(mtx)
  length = mtx.length

  mtx.each_index do |row|
    first = row
    last = length - 1 - first

    i = first
    while i < last
      offset = i - first

      top = mtx[first][i]
      mtx[first][i] = mtx[last-offset][first]
      mtx[last-offset][first] = mtx[last][last-offset]
      mtx[last][last-offset] = mtx[i][last]
      mtx[i][last] = top

      i += 1
    end
  end

  mtx
end


# time complexity: O(N) because there is a check at each index of for every element
# the idea is to store the top edge's current item temporarily (using the top variable)
# while modifying the other sides and then setting the last edge equal to top
