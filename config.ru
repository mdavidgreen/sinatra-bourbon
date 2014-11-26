require 'sass/plugin/rack'
require './app'

use Sass::Plugin::Rack

run Sinatra::Application