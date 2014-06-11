class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :start
      t.integer :user_id
      t.integer :exec_id
      t.integer :duration
      t.string :location

      t.timestamps
    end
  end
end
