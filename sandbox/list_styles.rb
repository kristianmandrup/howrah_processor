module Howrah
  module Processor
    module Element      
      class List
        module Styles
          def number_styles
            [ :decimal, :upper_roman, :lower_alpha ]
          end

          def bullet_styles
              [
              :circle,  # The marker is a circle
              :disc,    # The marker is a filled circle. This is default
              :square   # The marker is a square    
              ]
          end
        end
      end
    end
  end
end