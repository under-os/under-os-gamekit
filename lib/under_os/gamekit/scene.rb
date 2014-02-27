class UnderOs::Gamekit::Scene
  Sprite = UnderOs::Gamekit::Sprite

  attr_reader :_

  def initialize
    @_ = Wrap.alloc.initWith(self)
  end
end
