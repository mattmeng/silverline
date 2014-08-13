require 'entity'

module Silverline
  module Views
    class View < Entity
      def initialize( id, &block )
        @id = id.to_sym
        @open_tag = %q{script text="text/html"}
        @close_tag = %q{/script}
        yield if block_given?
      end
    end
  end
end

def view( id, &block )
  return Silverline::Views::View.new( id, &block )
end