require "rack/jekyll"
require "rack/auth"

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] = ['foo', 'bar']
end

run Rack::Jekyll.new
