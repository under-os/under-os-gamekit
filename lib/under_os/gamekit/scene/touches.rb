class UnderOs::Gamekit::Scene
  module Touches

  private

    def init_touch_events_listeners
      [ :touchstart, :touchmove, :touchend, :touchcancel ].each do |event|
        UnderOs::Event::Touch::Handler.add(event, self)

        on event do |event|
          touch = event.params[:native].allTouches.anyObject
          position = touch.locationInNode(@_)
          touched_node = @_.nodeAtPoint(position)

          if touched_node != @_
            if sprite = UnderOs::Gamekit::Sprite::INDEX[touched_node]
              sprite.emit(event.name, event.params.merge(target: sprite))
            end
          end
        end
      end
    end
  end
end
