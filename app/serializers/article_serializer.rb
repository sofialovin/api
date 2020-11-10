class ArticleSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer
  attributes :title, :content, :slug
end
