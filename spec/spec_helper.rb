require 'bundler'
Bundler.setup(:default, :test)

require 'rspec'
require 'rspec/autorun'
require 'howrah_processor'
require 'foxy_factory'
require 'proxy_party'

Spec::Runner.configure do |config|
  config.mock_with :mocha  
  # config.include(Matchers)    
end
