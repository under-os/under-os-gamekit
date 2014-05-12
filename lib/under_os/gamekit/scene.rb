class UnderOs::Gamekit::Scene
  include Touches
  include Manipulation

  include UnderOs::Event::Listener
  include UnderOs::Gamekit::Events

  Sprite = UnderOs::Gamekit::Sprite
  Label  = UnderOs::Gamekit::Label

  attr_reader :_

  def self.new(*args, &block)
    alloc.tap do |scene|
      scene.instance_eval do
        @_ = Wrap.alloc.initWith(self)
        init_touch_events_listeners
        __send__ :initialize, *args, &block
      end
    end
  end

  def initialize
    # should be in the subclasses
  end
end
