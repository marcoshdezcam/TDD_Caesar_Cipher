# frozen_string_literal: true

require_relative 'lib/caesar_cipher/version'

Gem::Specification.new do |spec|
  spec.name          = 'caesar_cipher'
  spec.version       = CaesarCipher::VERSION
  spec.authors       = ['Marcos Hernández Campos']
  spec.email         = ['marcoshdezcam@gmail.com']

  spec.summary       = 'Simple Caesar Cipher made in Ruby'
  spec.description   = 'This is a simple Caesar Cipher made in Ruby using TDD.'
  spec.homepage      = 'https://github.com/marcoshdezcam/TDD_Caesar_Cipher'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/marcoshdezcam/TDD_Caesar_Cipher'
  spec.metadata['changelog_uri'] = 'https://github.com/marcoshdezcam/TDD_Caesar_Cipher/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
