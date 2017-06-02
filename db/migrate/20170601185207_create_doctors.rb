class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :given_name
      t.string :family_name
      t.string :gender
      t.string :specialty

      t.timestamps
    end
  end
end
