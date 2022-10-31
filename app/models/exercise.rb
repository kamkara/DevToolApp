class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_rich_text :topic

  validates :title, :slug, :topic, :user_id, :course_id, :exercise_type, presence: true

  #enum exercise_type: { single_choice: 0, multiple_choice: 1, long_answer: 2 }

  def self.exercise_type_select
    #exercise_types.keys.map { |k| [k.titleize, k] }
  end


  ######### URL'S  ########
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
  
end
