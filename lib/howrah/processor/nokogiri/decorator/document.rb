module Howrah
  module Processor
    module Element    
      module Nokogiri
        module Decorator
          module Document
            def process
              css('html').first.process
            end
          end
        end
      end
    end
  end            
end
