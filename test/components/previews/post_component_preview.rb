# frozen_string_literal: true

class PostComponentPreview < ViewComponent::Preview
  # http://localhost:3000/rails/view_components
  def with_default_title
    post = Post.new(title: 'Default Title')
    render(PostComponent.new(post:))
  end

  def with_default_content
    post = Post.new(title: 'Default Title', body: 'Default Content')
    render(PostComponent.new(post:))
  end

  def wity_content_block
    post = Post.new(title: 'Default Title', body: 'Default Content')
    render(PostComponent.new(post:)) do
      content_tag(:span, 'Hello World', style: 'background-color: #ece')
    end
  end
end
