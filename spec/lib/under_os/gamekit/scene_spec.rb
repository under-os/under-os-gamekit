describe UnderOs::Gamekit::Scene do
  before do
    @scene = UnderOs::Gamekit::Scene.new
  end

  describe "raw SKScene" do
    before do
      @_ = @scene._
    end

    it "an instance of SKScene wrapper class" do
      @_.class.should == UnderOs::Gamekit::Scene::Wrap
    end

    it "has correct size" do
      @_.size.width.should  == UIScreen.mainScreen.bounds.size.width
      @_.size.height.should == UIScreen.mainScreen.bounds.size.height
    end
  end
end
