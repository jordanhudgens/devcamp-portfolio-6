class Blog < ApplicationRecord
  enum statuss: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  belongs_to :topic
end