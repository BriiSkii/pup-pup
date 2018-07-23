class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :color
      t.string :age
      t.text :description
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
