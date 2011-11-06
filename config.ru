require 'bundler/setup'
require 'rack'

App = ->(env) {  [200, {'Content-type' => 'text/plain'}, ['Heroku Rack!']] }

run App \
  unless t = ($0 == __FILE__)

if t
  Bundler.require(:default, :test)

  require 'minitest/spec'
  require 'minitest/autorun'
  require 'rack/test'

  describe App do
    include Rack::Test::Methods

    def app
      App
    end

    it 'responds' do
      get '/'
      assert                        last_response.ok?
      assert_equal 'Heroku Rack!',  last_response.body
    end
  end
end
