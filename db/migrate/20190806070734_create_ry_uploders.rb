class CreateRyUploders < ActiveRecord::Migration[6.0]
  def change
    create_table :ry_uploders do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
