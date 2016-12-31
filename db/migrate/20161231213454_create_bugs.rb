class CreateBugs < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
      t.string :app_token
      t.integer :number
      t.string :status
      t.string :priority
      t.text :comment
      t.integer :state_id

      t.timestamps
    end
    add_index :bugs, :app_token
    add_index :bugs, :number
  end
end
