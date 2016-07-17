class CreateCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :charts do |t|
      t.references :fable, foreign_key: true
      t.references :user, foreign_key: true
      t.date :reference_date
      t.integer :point

      t.timestamps
    end
  end
end
