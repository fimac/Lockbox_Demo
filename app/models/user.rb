class User < ApplicationRecord
    include ActiveStash::Search
    has_encrypted :name, type: :string
    has_encrypted :email, type: :string
    has_encrypted :suburb, type: :string
    has_encrypted :verified, type: :boolean
    has_encrypted :age, type: :integer
    has_encrypted :latitude, type: :float
    has_encrypted :dob, type: :date

    stash_index :name, :email, :suburb, :verified, :age, :latitude, :dob
end
