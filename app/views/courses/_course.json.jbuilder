json.extract! course, :id, :title, :content, :slug, :user_id, :created_at, :updated_at
json.url course_url(course, format: :json)
json.content course.content.to_s
