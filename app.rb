require 'sinatra'
require 'haml'
require 'sass'

configure do
  set :scss, {:style => :compressed, :debug_info => false}
end

get '/css/:name.css' do |name|
  content_type :css
  scss "sass/#{name}".to_sym, :layout => false
end

get '/' do
  @product = "Short Description of Product"
  haml :index, :layout => :default_layout
end