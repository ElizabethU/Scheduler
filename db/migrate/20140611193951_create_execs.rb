class CreateExecs < ActiveRecord::Migration
  def change
    create_table :execs do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
