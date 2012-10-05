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
  t=[a,b,c]
  raise TriangleError.new("Triangles cannot have 0 length or negative sides") if(t.min <=0)
  t.sort!
  raise TriangleError.new("Triangles cannot have sides that do not add to the maximum side.") unless((t[0]+t[1]) > t[2])
  
  case t.uniq.size
  when 1
    return :equilateral
  when 2
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
