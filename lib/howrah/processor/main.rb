module Howrah
  module Processor
    class Main
      def cross html
        document_model = create_document_model(html)
        document_model.process        
      end
  
      def create_document_model(html)  
        model = model_creator.new html
      end
    end
  end
end