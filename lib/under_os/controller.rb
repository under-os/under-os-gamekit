class UnderOs::GamekitController < UIViewController

  def initWith(app)
    @app = app
    init
  end

  def viewDidLoad
    super
    self.view = MainView.alloc.initWith(@app.config)
  end

  def viewWillLayoutSubviews
    super
    view.presentScene SKScene.alloc.initWithSize(view.bounds.size)
  end

  def prefersStatusBarHidden
    true
  end

  class MainView < SKView
    def initWith(config)
      init
      self.showsDrawCount = true
      self.showsNodeCount = true
      self.showsFPS = true
      self
    end
  end

end
