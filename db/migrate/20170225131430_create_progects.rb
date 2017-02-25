class CreateProgects < ActiveRecord::Migration[5.0]
  def change
    create_table :progects do |t|
      t.string :title

      t.timestamps
    end
  end
end
