require 'active_support/inflector'

module Howrah
  module Processor
    module Nokogiri
      module Decorator
        def self.decorate_document! nokogiri_document
          doc = ::CSS::Model.apply_to(nokogiri_document)
          [:element, :text, :node].each do |type|
            
            # TODO should perhaps use Foxy Factory to find constants?            
            doc.decorators("Nokogiri::XML::#{type.camelize}".constantize) << "Howrah::Processor::XML::#{type.camelize}".constantize
          end
          doc.decorate!
        end      
      end
    end
  end
end
