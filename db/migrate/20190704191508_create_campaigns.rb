class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.date :start_date
      t.decimal :budget
      t.text :brief

      t.timestamps
    end
  end
end
