class CreateLoards < ActiveRecord::Migration[5.1]
  def change
    create_table :loards do |t|
      t.string :name
      t.text :bio
      t.date :birth

      t.timestamps
    end
  end
end
