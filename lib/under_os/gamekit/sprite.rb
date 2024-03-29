class UnderOs::Gamekit::Sprite
  include Wrapper
  include Commons
  include Positioning
  include Traversing

  include UnderOs::Event::Listener
  include UnderOs::Gamekit::Events

  attr_reader :_

  def initialize(filename)
    @_ = SKSpriteNode.spriteNodeWithImageNamed(filename)
  end
end
