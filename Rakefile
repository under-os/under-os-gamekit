# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.require

require 'under-os-gamekit'

Motion::Project::App.setup do |app|
  app.name       = 'uos-gamekit'
  app.identifier = 'com.under-os.gamekit'
  app.specs_dir  = './spec/lib'
  app.version    = UnderOs::Gamekit::VERSION
  app.frameworks += ['SpriteKit', 'AVFoundation']

  app.codesign_certificate = ENV['RUBYMOTION_CERTIFICATE']
  app.provisioning_profile = ENV['RUBYMOTION_PROFILE']

  if ARGV[0] == 'spec'
    app.name       = 'uos-gamekit-spec'
    app.identifier = 'com.under-os.gamekit.spec'
  end
end
