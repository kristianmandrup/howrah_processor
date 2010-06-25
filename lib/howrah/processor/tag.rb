module Howrah
  module Processor
    module Tag
      attr_accessor :name, :options
      
      def tag(name, options = {}, &block) 
        @name = name
        @options = options 
        # execute?
        before
        render
        process_child_tags(block)
        after
      end

      def process_child_tags(&block)
        tag_processor(name, options).process(block) if block
      end

      def before
      end

      def render
        tag_renderer(tag_name, tag_options).render
      end

      def after
      end
    end
  end
end