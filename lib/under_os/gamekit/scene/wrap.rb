class UnderOs::Gamekit::Scene::Wrap < SKScene
  def initWith(wrap)
    @wrap = wrap
    initWithSize(UIScreen.mainScreen.bounds.size)
  end

  def touchesBegan(touches, withEvent:event)
    # UnderOs::UI::Events::TouchListeners.notify :touchstart, event
  end

  def touchesMoved(touches, withEvent:event)
    # UnderOs::UI::Events::TouchListeners.notify :touchmove, event
  end

  def touchesEnded(touches, withEvent: event)
    # UnderOs::UI::Events::TouchListeners.notify :touchend, event
  end

  def touchesCancelled(touches, withEvent: event)
    # UnderOs::UI::Events::TouchListeners.notify :touchcancel, event
  end
end
