class UnderOs::Gamekit::Position < UnderOs::Point
  def initialize(object)
    @object = object
  end

  def x
    @object.position.x
  end

  def x=(position)
    @object.position = CGPointMake(position, y)
  end

  def y
    @object.position.y
  end

  def y=(position)
    @object.position = CGPointMake(x, position)
  end
end
