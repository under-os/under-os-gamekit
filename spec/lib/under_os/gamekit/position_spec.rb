class PositionDummy
  attr_accessor :position

  def initialize(x, y)
    @position = CGPointMake(x, y)
  end
end

describe UnderOs::Gamekit::Position do
  before do
    @dummy = PositionDummy.new(10, 20)
    @position = UnderOs::Gamekit::Position.new(@dummy)
  end

  describe "#x" do
    it "allows to read the x position" do
      @position.x.should == 10
    end

    it "allows to set the x position" do
      @position.x = 30
      @dummy.position.x.should == 30
    end
  end

  describe "#y" do
    it "allows to read the y position" do
      @position.y.should == 20
    end

    it "allows to set the y position" do
      @position.y = 30
      @dummy.position.y.should == 30
    end
  end
end
