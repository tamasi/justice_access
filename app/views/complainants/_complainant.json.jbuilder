json.extract! complainant, :id, :name, :last_name, :birthdate, :address, :nationality, :gender, :disability, :migrant, :created_at, :updated_at
json.url complainant_url(complainant, format: :json)
