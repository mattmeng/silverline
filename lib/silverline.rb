require "silverline/constants"
require "silverline/exceptions"
require 'sinatra'
require 'launchy'
require 'views/view'
require 'views/button'

module Silverline
  class Silverline
    def self.instance
      return @instance ||= new
    end

    def initialize
      @views = []
    end

    def add_view( view )
      raise NotAView unless view.kind_of? Views::View
      @views << view
    end

    def views_to_html
      view_html = ''
      @views.each do |view|
        view_html += view.to_html
      end
      return view_html
    end
  end

  class Server < Sinatra::Base
    set :public_folder, File.dirname( __FILE__ ) + '/../public'

    get '/' do
      erb :index
    end
  end
end

def start_silverline
  Silverline::Server.run! do
    Launchy.open( 'http://localhost:4567' )
  end
end
