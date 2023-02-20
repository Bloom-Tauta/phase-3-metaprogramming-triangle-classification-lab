class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a      
    @b = b      
    @c = c 
  end

  def valid_num?
    [@a, @b, @c].all? { |num| num > 0}
  end

  def valid_triangle?
    @a + @b > @c && @b + @c > @a && @a + @c > @b
  end

  def kind
    try_error 
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c ||  @a == @c
      :isosceles
    else
      :scalene
    end
  end
  def try_error
    raise TriangleError unless valid_num? && valid_triangle?
  end
  
  class TriangleError < StandardError
  end
end
