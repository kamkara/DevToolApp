class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :title, :slug, :user_id, :course_id, presence: true

   ######### URL'S  ########
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
  
end
