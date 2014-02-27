# -*- encoding: utf-8 -*-
require File.expand_path('../lib/under_os/gamekit', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "under-os-gamekit"
  gem.version       = UnderOs::Gamekit::VERSION
  gem.homepage      = "http://under-os.com"

  gem.authors       = ["Nikolay Nemshilov"]
  gem.email         = ['nemshilov@gmail.com']
  gem.description   = "The iOS SpriteKit wrapper for the UnderOS Project"
  gem.summary       = "The iOS SpriteKit wrapper for the UnderOS Project. Matz"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_dependency 'under-os-core'

  gem.add_development_dependency 'rake'

end
