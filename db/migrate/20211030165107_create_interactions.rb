class CreateInteractions < ActiveRecord::Migration[6.1]
  def change
    create_table :interactions do |t|
      t.integer :interacted_on_id
      t.string :interacted_on_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
