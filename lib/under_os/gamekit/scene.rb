class UnderOs::Gamekit::Scene
  attr_reader :_

  def initialize
    @_ = Wrap.alloc.initWith(self)
  end
end
