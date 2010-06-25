module Howrah
  module Processor
    module Element
      class Table      
      attr_accessor :data, :options, :header_style, :footer_style 

      def valid_children
        [:thead, :tbody, :tr, :tfoot]
      end
      
      def after        
        init_table
        do_table_header        
        return if data.empty?   
        do_table_footer

        table_styles
        draw_table
        clear_table
      end
        
      def table_options        
        options.merge!(:header => true) if table.header?
      end              

      protected
        def table_styles
          header_style = default_header_style
          footer_style = default_footer_style
        end
        
        def init_table
          @data = []        
          @options = {}
        end

        def do_table_header
          if table.header?
            data = table.header + table.body 
          end                      
        end

        def do_table_footer
          if table.footer?        
            data << table.footer
            data.flatten
          end
        end
        
    end    
  end
end
