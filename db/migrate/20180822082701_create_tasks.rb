class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.boolean :is_done, null: false, default: false
      t.datetime :due

      t.timestamps
    end
  end
end
