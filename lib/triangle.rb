class Triangle
  
  attr_accessor :len1, :len2, :len3

  def initialize(len1,len2,len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    sum1 = self.len1 + self.len2
    sum2 = self.len2 + self.len3
    sum3 = self.len3 + self.len1

    if (self.len1 <= 0 || self.len2 <= 0 || self.len3 <= 0 || sum1 <= self.len3 || sum2 <= self.len1 || sum3 <= self.len2)
    #if (self.len1 <= 0 || self.len2 <= 0 || self.len3 <= 0)
      raise TriangleError
    
    elsif (self.len1 == self.len2 && self.len2 == self.len3 && self.len1 != 0)
      return :equilateral

    elsif (self.len1 == self.len2 || self.len2 == self.len3 || self.len1 == self.len3)
      return :isosceles
      
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Error"
    end
  end
end
