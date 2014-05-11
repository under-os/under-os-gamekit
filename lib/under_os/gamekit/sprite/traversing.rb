class UnderOs::Gamekit::Sprite
  module Traversing
    def scene
      @_.scene.wrap if @_.scene
    end

    def parent
      @_.parent
    end

    def children
      @_.children
    end

    def append(node)
      @_.addChild node._
    end

    def insert(node, position=nil)
      if position
        @_.insertChild node._, atIndex: position
      else
        append node
      end
    end

    def remove
      @_.removeFromParent
    end

    def clear
      @_.removeAllChildren
    end
  end
end
