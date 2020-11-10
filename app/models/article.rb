class Article < ApplicationRecord
  attr_accessor :id, :title, :content, :slug

  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true
end
