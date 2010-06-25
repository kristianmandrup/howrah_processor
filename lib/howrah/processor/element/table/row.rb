module Howrah
  module Processor
    module Element      
      class Table
        class Row
          attr_accessor :row_type

          ROW_TYPE_MAP = {'th' => :header, 'tr' => :body, 'tf' => :footer}

          def init
            row_type = ROW_TYPE_MAP[name]
          end

          def add_cell cell
            cells << cell
          end
  
          def done
            append_row row, row_type
          end
        end
      end
    end
  end
end