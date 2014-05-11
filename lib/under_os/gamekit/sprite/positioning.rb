class UnderOs::Gamekit::Sprite
  module Positioning
    def position
      @position ||= UnderOs::Gamekit::Position.new(self)
    end

    def position=(position)
      pos = UnderOs::Point.new(position)
      @_.position = CGPointMake(pos.x, pos.y)
    end
  end
end
