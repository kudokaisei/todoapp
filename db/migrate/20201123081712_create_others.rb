class CreateOthers < ActiveRecord::Migration[6.0]
  def change
    create_table :others do |t|
      t.string :task
      t.text :details
      t.timestamps
    end
  end
end
