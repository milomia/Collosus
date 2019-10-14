# Given 2 arrays of Integers A and B (passed as parameters),
# implement the following function so that it returns true if ALL the elements in A are bigger than ALL elements in B.
# In other words, whatever element of A we pick, it will always be bigger of all B's elements.
# We can express the function logic also with the following statement:
#
# Given Ai as i-th element of A and Bj as j-th element of B, Ai > Bj for each i,j

def bigger(a, b)
  a.each | a,b | a > b
end

a=[1,2,3,4,5]
b=[6,7,8,9,10]

bigger(a,b)



# =============== Notes =============== #
