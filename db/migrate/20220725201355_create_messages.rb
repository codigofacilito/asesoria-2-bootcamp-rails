class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.date :target_date
      t.string :title

      t.timestamps
    end
  end
end
