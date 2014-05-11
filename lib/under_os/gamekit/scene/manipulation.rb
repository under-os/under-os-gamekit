class UnderOs::Gamekit::Scene
  module Manipulation
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
  end
end
