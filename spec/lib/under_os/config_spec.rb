describe UnderOs::Config do
  before do
    @config = UnderOs::Config.new('app')
  end

  it "has a getter/setter for the 'home_scene' setting" do
    @config.home_scene = 'my scene'
    @config.home_scene.should == 'my scene'
  end

  it "has a getter/setter for the 'show_draws' setting" do
    @config.show_draws = true
    @config.show_draws.should == true
  end

  it "has a getter/setter for the 'show_nodes' setting" do
    @config.show_nodes = true
    @config.show_nodes.should == true
  end

  it "has a getter/setter for the 'show_fps' setting" do
    @config.show_fps = true
    @config.show_fps.should == true
  end
end
