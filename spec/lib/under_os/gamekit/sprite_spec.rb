describe UnderOs::Gamekit::Sprite do

  before do
    @sprite = UnderOs::Gamekit::Sprite.new('test.png')
  end

  describe "raw sprite object" do
    before do
      @_ = @sprite._
    end

    it "should be an instance of SKSpriteNode" do
      @_.class.should == SKSpriteNode
    end
  end

end
