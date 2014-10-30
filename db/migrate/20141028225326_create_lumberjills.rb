class CreateLumberjills < ActiveRecord::Migration
  def change
    create_table :lumberjills do |t|
      t.string :name
      t.belongs_to :lumberjack, index: true

      t.timestamps
    end
  end
end
