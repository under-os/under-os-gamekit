class DudeScene < UOS::Gamekit::Scene

  def initialize
    @dude = Sprite.new("dude_stand")

    every 1.second, shuffle: true, &:send_enemy
    on :tap, &:fire
  end

  def send_enemy
  end

  def fire
  end
end
