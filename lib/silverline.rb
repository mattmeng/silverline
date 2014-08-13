require "silverline/constants"
require 'sinatra'
require 'launchy'
require 'views/view'
require 'views/button'

module Silverline
  class Silverline < Sinatra::Base
    get '/' do
      'Hello world!'
    end
  end
end

def start_silverline
  Silverline::Silverline.run! do
    Launchy.open( 'http://localhost:4567' )
  end
end
