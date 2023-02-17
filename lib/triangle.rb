class Triangle
  # write code here
  
end
  attr_reader :s1, s2, s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  def kind
    validate_triangle
    if s1 == s2 && s2 = s3
      :equilateral
    elseif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end

   end
   def sides > 0?
    [s1, s2, s3].all? (&:positive)
   end
   def valid_triangle_inequlity?
    s1 + s2 > s3 && s1 + s3 > s2 && s2 + s3 > s1
    end
    def validate_triangle
      raise TriangleError unless sides > 0? && valid_triangle_inequlity?
    end
    class TriangleError < StandardError
    end

  end