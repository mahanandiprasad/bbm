class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true
      t.references :contactdetail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
