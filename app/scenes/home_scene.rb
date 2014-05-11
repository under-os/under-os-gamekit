class HomeScene < UOS::Gamekit::Scene
  def initialize
    @dude_link = Label.new(text: "The Dude")
    @dude_link.on(:touchend) { show_scene(:dude) }
    @dude_link.position = {x: 100, y: 100}

    append @dude_link
  end

  def show_scene(name)
    switch_to "#{name.to_s.capitalize}Scene".constantize.new
  end
end
