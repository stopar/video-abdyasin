module ApplicationHelper
            
  def render_text(text)
    renderer = Redcarpet::Render::HTML.new(
                :hard_wrap => true)
                
    markdown = Redcarpet::Markdown.new(renderer, 
                :no_intra_emphasis => true, 
                :space_after_headers => true, 
                :superscript => true)
                
    markdown.render(text).html_safe
  end
  
end
