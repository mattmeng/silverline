require 'views/entity'

module Silverline
  module Views
    class View < Entity
      def initialize( id, &block )
        super( id, &block )
        @open_tag = %q{script text="html"}
        @close_tag = %q{script}
      end
    end
  end
end

def view( id, &block )
  Silverline::Silverline.instance.add_view( Silverline::Views::View.new( id, &block ) )
end