class CreateLangs < ActiveRecord::Migration[5.0]
  def change
    create_table :langs do |t|
      t.string  :voca
      t.timestamps
    end
  end
end
