module Howrah
  module Processor
    module Element
      class Table
        class Cell
          def content        
            child = children.first
            if child.name == 'img'         
              src = child.attribute('src')
              alt_text = child.attribute('alt')
              return {:image => {:src => src, :caption => alt_text}
            end
            child.text
          end      
        end
      end        
    end
  end
end