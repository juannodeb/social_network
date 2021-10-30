class CreateInteractions < ActiveRecord::Migration[6.1]
  def change
    create_table :interactions do |t|
      t.integer :interacted_on_id, index: true
      t.string :interacted_on_type, index: true
      t.integer :action, index: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
