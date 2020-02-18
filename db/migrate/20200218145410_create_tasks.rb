class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |task|
      t.string :title
      t.text :details
      t.string :completed, default: false
      t.string :boolean

      t.timestamps
    end
  end
end
