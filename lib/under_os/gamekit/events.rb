#
# Gamekit mostly works with the touchevents and doesn't really
# do gesture recognizers, this is a little, lightweight
# getstures recognizer thing
#
module UnderOs::Gamekit::Events

  def on(event, &block)
    Recognizer.try_init_for(self, event)
    UnderOs::Event::Storage.add(self, event, block)
    self
  end

  module Recognizer
    extend self

    def try_init_for(object, event)
      case event
      when :tap then Tap.new(object)
      else    return nil
      end
    end

    class Tap
      def initialize(object)
        @object = object

        @object.on :touchstart do |event|
          @start_touch = event.touches[0]
        end

        @object.on :touchend do |event|
          if distance_traveled(event.touches[0]) < 20
            @object.emit :tap, event.params.merge(target: object)
          end
        end
      end

      def distance_traveled(end_touch)
        return 9999 if !@start_touch

        dist  = @start_touch.pageX - end_touch.pageX
        dist += @start_touch.pageY - end_touch.pageY

        @start_touch = nil

        dist.abs
      end
    end
  end

end
