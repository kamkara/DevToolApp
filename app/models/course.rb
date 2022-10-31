class Course < ApplicationRecord
  ######### RELATIONS  ########
  belongs_to :user
  has_rich_text :content
  has_many :exercises, class_name: "Exercise", foreign_key: "course_id", dependent: :destroy
  
  
  ######### VALIDATIONS  ########
  validates :title, :content, :slug, :user_id, presence: true
  
  
  ######### URL'S  ########
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
end
