# frozen_string_literal: true

class PostComponent < ViewComponent::Base
  def initialize(title:, body:)
    @title = title
    @body = body
  end

end
