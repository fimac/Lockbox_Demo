class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name_ciphertext
      t.text :email_ciphertext
      t.text :suburb_ciphertext
      t.text :verified_ciphertext
      t.text :age_ciphertext
      t.text :latitude_ciphertext
      t.text :dob_ciphertext

      t.timestamps
    end
  end
end
