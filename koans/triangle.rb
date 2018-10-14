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
    tab = [a, b, c].sort
    raise TriangleError if tab[2] >= tab[1] + tab[0] or tab[0] <= 0
    if tab[0] == tab[1] and tab[1] == tab[2]
        return :equilateral
    elsif tab[0] == tab[1] or tab[1] == tab[2]
        return :isosceles
    else
        return :scalene
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
