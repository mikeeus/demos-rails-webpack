class PostResource < Graphiti::Resource
  self.adapter = Graphiti::Adapters::ActiveRecord
  include ActionView::Helpers::TextHelper

  attribute :title, :string
  attribute :content, :string do
    simple_format(@object.content)
  end
end