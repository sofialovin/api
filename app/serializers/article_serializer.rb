class ArticleSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :slug
end
