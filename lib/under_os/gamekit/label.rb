class UnderOs::Gamekit::Label
  DEFAULT_FONT = "Chalkduster"

  attr_reader :_

  def initialize(options={})
    @_ = SKLabelNode.labelNodeWithFontNamed(options[:font] || DEFAULT_FONT)

    self.text  = options[:text]  || ''
    self.size  = options[:size]  || 20
    self.color = options[:color] || UIColor.blackColor
  end

  def text
    @_.text
  end

  def text=(text)
    @_.text = text
  end

  def size
    @_.fontSize
  end

  def size=(size)
    @_.fontSize = size
  end

  def color
    @_.fontColor
  end

  def color=(color)
    @_.fontColor = UnderOs::Color.new(color).ui
  end
end
