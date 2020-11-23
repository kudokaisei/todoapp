class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :task
      t.text :details
      t.timestamps
    end
  end
end
