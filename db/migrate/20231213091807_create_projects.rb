class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.text :content
      t.integer :like, default: 0

      t.timestamps
    end
  end
end
