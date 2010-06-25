module Howrah
  module Processor
    class Element # See sandbox/base for inspiration!      
      proxy :parent

      def initialize parent
        @parent = parent                
      end

      def process(&block)
        before
        execute(block) if block && proces_children?
        after
      end    

      def execute(&block)
        block.arity < 1 ? self.instance_eval(&block) : block.call(self)
      end

      def before
        self
      end

      def after        
        self
      end

      # override by subclass
      def process_children?
        true
      end     
    end
  end
end