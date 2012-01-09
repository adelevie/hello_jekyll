require "rack/jekyll"
require "rack"

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] = ['foo', 'bar']
end

run Rack::Jekyll.new
