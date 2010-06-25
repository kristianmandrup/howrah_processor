module Howrah
  module Processor
    module Element
      class Base
        attr_accessor :options
        proxy :parent
      
        def initialize(parent, options = {}, &block) 
          raise ArgumentError, "Supplied options must be of type Hash" if ! options.kind_of? Hash
          raise ArgumentError, "Supplied options must not be empty" if options.empty?        
          @parent = parent
          @options = options
        end

        def process(&block)
          before
          execute(block) if block && proces_children?
          after
        end

        def before
          self
        end

        def after        
          self
        end

        def execute(&block)
          block.arity < 1 ? self.instance_eval(&block) : block.call(self)
        end

        def process_children?
          true
        end     
      end
    end
  end
end