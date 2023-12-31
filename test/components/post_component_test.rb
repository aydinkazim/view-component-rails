# frozen_string_literal: true

require 'test_helper'

class PostComponentTest < ViewComponent::TestCase
  include ViewComponent::RenderPreviewHelper
  def test_component_renders_something_useful
    post = posts(:applecart)
    render_inline(PostComponent.new(post:))
    assert_text(post.title)
  end

  def test_component_renders_body_content
    post = posts(:applecart)
    render_inline(PostComponent.new(post:))
    assert_text(post.body)
  end

  def test_component_renders_content
    post = posts(:applecart)
    expected = 'Hello World'
    render_inline(PostComponent.new(post:)) do
      expected
    end
    assert_text(expected)
  end

  def test_render_preview
    render_preview(:with_default_title)

    assert_text('Default Title')
  end
end
