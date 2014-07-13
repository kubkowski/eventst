class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.text :agenda
      t.text :address
      t.integer :organizer_id
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end
  end
end
