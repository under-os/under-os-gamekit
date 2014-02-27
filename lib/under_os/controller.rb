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
      self.showsDrawCount = config.show_draws
      self.showsNodeCount = config.show_nodes
      self.showsFPS       = config.show_fps
      self
    end
  end

end
