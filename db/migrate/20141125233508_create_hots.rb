class CreateHots < ActiveRecord::Migration
  def change
    create_table :hots do |t|
      t.belongs_to :lumberjack, index: true
      t.belongs_to :lumberjill, index: true

      t.timestamps
    end
  end
end
