module Howrah
  module Processor
    module Element    
      module Nokogiri
        module Decorator
          module XMLElement
            def process
              tag_processor = create_tag_processor(tag_name, tag_options)  
              tag_processor.process do
                with_children do |child| 
                  child.process  
                end
              end
            end
            
            protected

            def with_children(&block)
              children.each do |child| 
                case child 
                XMLElement, TextElement
                  yield child  
                end
              end
            end
          end
        end
      end
    end
  end  
end
