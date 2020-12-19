class Patient < ApplicationRecord
	belongs_to :user
	has_attached_file :cover, styles: { thumb: "100x100#" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
  validates :disease, presence: true
  validates :body, presence: true
end
