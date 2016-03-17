# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  result = [a, b, c].uniq.length
  if [a, b, c].min <= 0
    raise TriangleError, '0 exception'
  end
  a, b, c = [a, b, c].sort
  raise TriangleError if a + b <= c
  result == 1 ? (return :equilateral) : result == 2 ? (return :isosceles) : (return :scalene)
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
