class Rectangle < Polygon
  def square
    @square = @sides[0]*@sides[1]
  end

  def square?
    if( (@sides[0] == @sides[1]) &&
        (@sides[1] == @sides[2]) &&
        (@sides[2] == @sides[3]) &&
        (@corners[0] == 90) &&
        (@corners[1] == 90) &&
        (@corners[2] == 90)
    )
      true
    else
      false
    end
  end
end
