module Howrah
  module Processor
    module Element      
      class List

        def default_options
          @default_options ||= {:margin => {:left => 10}, :styles => [:bold] }
        end      
          
        def list_style
          @list_style ||= current_style[:list_style_type] || default_list_style
          raise "invalid list style #{@list_style}" if !valid_list_styles.include?(@list_style.to_sym)
          @list_style        
        end      

        def default_list_style
          raise "default_list_style must be implemented by subclass of ListBase"
        end
  
        # default create as a bullet
        def render_item
          super          
        end                  
      end
    end
  end  
end