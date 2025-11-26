class CreateCaramels < ActiveRecord::Migration[8.1]
  def change
    create_table :caramels do |t|
      t.boolean :adopted, null: false
      t.string :name
      t.text :story
      t.datetime :found_at
      t.integer :judgemental_stare_intensity

      t.timestamps
    end
  end
end
