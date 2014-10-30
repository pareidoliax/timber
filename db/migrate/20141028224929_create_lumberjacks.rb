class CreateLumberjacks < ActiveRecord::Migration
  def change
    create_table :lumberjacks do |t|
      t.string :name
      t.belongs_to :lumberjill, index: true

      t.timestamps
    end
  end
end
