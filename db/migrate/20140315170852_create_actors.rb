class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.integer :actorId
      t.string :name
      t.datetime :birthDate
      t.string :homeTown

      t.timestamps
    end
  end
end
