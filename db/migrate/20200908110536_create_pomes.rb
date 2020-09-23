class CreatePomes < ActiveRecord::Migration[6.0]
  def change
    create_table :pomes do |t|
      t.timestamps
      t.references :user, null: false, forign_keys: true
      t.text       :writings, null: false
      t.string     :name,     null: false
      t.string     :color_pome, null: false
    end
  end
end
