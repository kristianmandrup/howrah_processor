module Howrah    
  module Processor
    module OptionHelper
      def default_options
        return pdf_options_from_css if default_css_options? && !default_pdf_options?
        default_pdf_options          
      end

      def default_css_options?
        default_css_options && default_css_options != ''
      end                                          

      def default_pdf_options?
        default_pdf_options && default_pdf_options != {}
      end

      def pdf_options_from_css
        @default_pdf_options ||= parse_css_options.to_pdf_style
      end
      
      def parse_css_options
        selector_text = default_css_options 
        selector = CssParserMaster::Selector.new('pdf_rule', selector_text, 99999)        
        Howrah::StyleMapper.parse(selector.declarations)        
      end    
      
      def pdf_style_options(pdf_style, *styles)
        pdf_style.merge!(default_options)
        styles.each{|style| pdf_style.merge! style}
        pdf_style        
      end        
    end
  end
end