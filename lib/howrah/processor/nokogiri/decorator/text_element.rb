module Howrah
  module Processor
    module Element    
      module Nokogiri
        module Decorator
          module TextElement
            def process
              create_tag_processor(:text).process
            end
          end
        end
      end
    end
  end            
end
