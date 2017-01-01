class CreateBugs < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
      t.string :app_token,          null: false
      t.integer :number
      t.string :status
      t.string :priority
      t.text :comment

      t.timestamps
    end
    add_index :bugs, :app_token
    add_index :bugs, :number

    add_index :bugs, [:app_token, :number], unique: true
  end
end
