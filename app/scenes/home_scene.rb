class HomeScene < UOS::Gamekit::Scene
  def initialize
    @dude_link = Label.new(text: "The Dude")
    @dude_link.on(:tap) { show_scene(:dude) }
    @dude_link.position = {x: 150, y: 300}
    @dude_link.color = :white

    append @dude_link
  end

  def show_scene(name)
    puts "Switching to #{name}"
    #switch_to "#{name.to_s.capitalize}Scene".constantize.new
  end
end
