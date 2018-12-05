class PostResource < Graphiti::Resource
  include ActionView::Helpers::TextHelper

  self.adapter = Graphiti::Adapters::ActiveRecord
  primary_endpoint '/api/v1/posts'

  attribute :title, :string
  attribute :content, :string do
    simple_format(@object.content)
  end
end