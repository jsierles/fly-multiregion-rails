class CreateWriteables < ActiveRecord::Migration[6.1]
  def change
    create_table :writeables do |t|
      t.string :content

      t.timestamps
    end
  end
end
