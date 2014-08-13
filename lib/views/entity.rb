module Silverline
  module Views
    class Entity
      attr_reader :id
      attr_reader :open_tag
      attr_reader :contents
      attr_reader :close_tag

      def initialize( id, &block )
        @id = id.to_sym
        @contents = []
        if block_given?
          define_singleton_method( :dispatch, &block )
          dispatch
        end
      end

      def to_s
        return to_html
      end

      def to_html
        byebug
        contents = ''
        @contents.each do |entity|
          contents += entity.to_s
        end
        return "<#{@open_tag}#{" id='#{id.to_s}'" if id}>#{contents}</#{@close_tag}>"
      end
    end
  end
end