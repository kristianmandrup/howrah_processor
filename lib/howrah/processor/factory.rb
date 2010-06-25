module Howrah
  module Processor    
    class Factory
      attr_accessor :factory
    
      def initialize
        @factory = FoxyFactory.new :howrah, :processor, :element
      end

      def tag_processor(name, parent) 
        processor = processor_class(name).new parent
      end
      
      protected

      def processor_class name
      begin
        find_class(name)
      rescue Foxy::Factory::ConstantNotFoundError
        Howrah::Processor::Element                 
      end
      
    end
  end
end