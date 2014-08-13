module Silverline
  module Views
    class Entity
      attr_reader :id
      attr_reader :open_tag
      attr_reader :contents
      attr_reader :close_tag

      def initialize; end

      def to_s
        return to_html
      end

      def to_html
        contents = ''
        @contents.each do |entity|
          contents += entity.to_s
        end
        return "<#{@open_tag}#{" id='#{id.to_s}'" if id}>#{@contents}<#{@close_tag}>"
      end
    end
  end
end