class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 <= 0 || @side2 <= 0) || @side3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
    
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      else
        if (@side1 == @side2 || @side2 == @side3) || @side1 == @side3
          :isosceles
        else
          :scalene
        end
      end
      
    end
  end

  class TriangleError < StandardError
    def message 
      puts "Triangle:"
    end
  end

end
  it 'knows that triangles with no size are illegal' do
    expect{Triangle.new(0, 0, 0).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    expect{Triangle.new(3, 4, -5).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(Triangle::TriangleError)
  end


