class UnderOs::GamekitController < UIViewController
  include UnderOs::Event::Touch::Listener

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
    view.presentScene @app.config.home_scene.new._
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
