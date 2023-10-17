# frozen_string_literal: true

class HeaderComponentPreview < ViewComponent::Preview
  # http://localhost:3000/rails/view_components
  def with_default_title
    render(HeaderComponent.new(title: 'Default Title', body: nil))
  end
end
