class UnderOs::Gamekit::Sprite
  attr_reader :_

  def initialize(filename)
    @_ = SKSpriteNode.spriteNodeWithImageNamed(filename)
  end
end
