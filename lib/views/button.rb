require 'views/entity'

module Silverline
  module Views
    class Button < Entity
      def initialize( id, &block )
        super( id, &block )
        @open_tag = %q{button}
        @close_tag = %q{button}
      end
    end

    class Entity
      def button( id, &block )
        @contents << Button.new( id, &block )
      end
    end
  end
end