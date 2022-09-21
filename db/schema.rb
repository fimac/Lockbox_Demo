# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_26_022737) do
  create_table "users", force: :cascade do |t|
    t.text "name_ciphertext"
    t.text "email_ciphertext"
    t.text "suburb_ciphertext"
    t.text "verified_ciphertext"
    t.text "age_ciphertext"
    t.text "latitude_ciphertext"
    t.text "dob_ciphertext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stash_id"
    t.index ["stash_id"], name: "index_users_on_stash_id"
  end

end
