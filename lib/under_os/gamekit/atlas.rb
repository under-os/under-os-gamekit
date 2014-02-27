class UnderOs::Gamekit::Atlas
  attr_reader :_, :textures

  def initialize(name)
    @_ = SKTextureAtlas.atlasNamed(name)

    @textures = @_.textureNames.map do |name|
      @_.textureNamed(name)
    end
  end

end
