class UnderOs::Gamekit::Scene::Wrap < SKScene
  attr_accessor :wrap

  def initWith(wrap)
    @wrap = wrap
    initWithSize(UIScreen.mainScreen.bounds.size)
  end
end
