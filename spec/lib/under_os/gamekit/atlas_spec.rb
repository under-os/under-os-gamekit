describe UnderOs::Gamekit::Atlas do
  before do
    @atlas = UnderOs::Gamekit::Atlas.new("Dummy")
  end

  describe "#_" do
    before do
      @_ = @atlas._
    end

    it "should be a class of SKTextureAtlas" do
      @_.class.should == SKTextureAtlas
    end
  end

  describe "#textures" do
    it "loads up all the textures" do
      @atlas.textures.size.should == 3
    end
  end
end
