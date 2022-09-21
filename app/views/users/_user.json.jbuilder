json.extract! user, :id, :name_ciphertext, :email_ciphertext, :suburb_ciphertext, :verified_ciphertext, :age_ciphertext, :latitude_ciphertext, :dob_ciphertext, :created_at, :updated_at
json.url user_url(user, format: :json)
