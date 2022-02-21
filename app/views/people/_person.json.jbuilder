json.extract! person, :id, :name, :email, :birthday, :zip, :created_at, :updated_at
json.url person_url(person, format: :json)
