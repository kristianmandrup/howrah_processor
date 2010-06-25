module Howrah
  module Processor
    module Element      
      class Table < Base
        attr_accessor :caption

        # have row containers for header, body and footer
        rows :header, :body, :footer 

        def initialize parent
          super
        end

        # append row to specific row container as indicated by position which is name of RowProcessor calling this method
        def append_row row, row_type
          send(row_type) << row
        end
      end
    end
  end
end
