class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.references :actor
      t.references :movie
      t.timestamps
    end
  end
  
  def down
    drop_table :projects
  end
end
