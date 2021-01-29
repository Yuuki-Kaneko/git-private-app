class CreatePris < ActiveRecord::Migration[5.2]
  def change
    create_table :pris do |t|
      t.text :text

      t.timestamps
    end
  end
end
