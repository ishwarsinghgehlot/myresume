json.extract! testimonial, :id, :mentor_name, :company_name, :description, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
