class CreatePomes < ActiveRecord::Migration[6.0]
  def change
    create_table :pomes do |t|
      t.timestamps
    end
  end
end