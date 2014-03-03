describe UnderOs::Gamekit::Label do
  before do
    @label = UnderOs::Gamekit::Label.new(text: "Hello")
  end

  describe "constructor" do
    it "sets the text of the label correctly" do
      @label.text.should == "Hello"
    end

    it "defaults to the 20 pixels font size" do
      @label.size.should == 20
    end

    it "defaults to the black color" do
      UnderOs::Color.new(@label.color).to_rgb.should == [0, 0, 0] # black
    end
  end

  describe "#text=" do
    it "sets the text" do
      @label.text = "New text"
      @label.text.should == "New text"
    end
  end

  describe "#size=" do
    it "sets the font-size" do
      @label.size = 40
      @label.size.should == 40
    end
  end

  describe "#color=" do
    it "sets the font color" do
      @label.color = :white
      UnderOs::Color.new(@label.color).to_rgb.should == [255,255,255] # white
    end
  end
end
