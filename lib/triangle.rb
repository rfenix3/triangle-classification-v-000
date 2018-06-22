class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 == 0 || @side2 == 0) || @side3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
    
    
      if @side1 == @side2 == @side3
        :equilateral
      else
        if @side1 = @side2 || @side2 == @side 3 || @side1 == @side3
          :isosceles
        else
          :scalene
        end
      end
      
    end
  end

  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end
