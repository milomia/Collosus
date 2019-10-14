
# Given 2 arrays of Integers A and B (passed as parameters),
# implement the following function so that it returns true if ALL the elements in A are bigger than ALL elements in B.
# In other words, whatever element of A we pick, it will always be bigger of all B's elements.
# We can express the function logic also with the following statement:
#
# Given Ai as i-th element of A and Bj as j-th element of B, Ai > Bj for each i,j

def bigger(a, b)
  i=0
  a.each { |n|
    break if n > b[i]
    i += 1
  }
  if a.length == i
    return false
  else
    return true
  end

end

a=[1,2,3,4,5]
b=[6,7,8,9,10]
ret=bigger(a,b)
if ret == false
  puts  "should be a < b"
else
  puts "should not be a > b"
end

a=[7,2,3,4,5]
b=[6,7,8,9,10]
ret=bigger(a,b)
if ret == false
  puts  "should not be a < b"
else
  puts "should be a > b"
end


# =============== Notes =============== #
# should be in unit test
