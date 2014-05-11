class UnderOs::Gamekit::Sprite
  INDEX = {}

  module Wrapper
    def self.included(base)
      base.instance_eval do
        def self.new(*args, &block)
          super.tap do |instance|
            UnderOs::Gamekit::Sprite::INDEX[instance._] = instance
          end
        end
      end
    end
  end
end
