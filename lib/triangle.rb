class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if side_one == side_two && side_one == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
      
  end
  
  def illegal_triangle
    if one <= 0 || two <= 0 || three <= 0
      begin
        raise TriangleError
      end
    elsif one == nil || two == nil || three == nil
      begin
        raise TriangleError
      end
    elsif one + two <= three || one + three <= two || three + two <= one
      begin
        raise TriangleError
      end
    end
  end
  
  class TriangleError < StandardError
    
  end
end
