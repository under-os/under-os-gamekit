UnderOs::App.instance_eval do

protected

  def self.root_controller
    UnderOs::GamekitController.alloc.initWith(self)
  end

end
