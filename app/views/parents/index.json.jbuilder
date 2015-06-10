json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :email, :student_id, :password_digest, :string
  json.url parent_url(parent, format: :json)
end
