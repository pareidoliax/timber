class LumberjacksLumberjills < ActiveRecord::Migration
  def change
    create_table :lumberjacks_lumberjills, id: false do |t|
      t.belongs_to :lumberjack, index: true
      t.belongs_to :lumberjill, index: true
    end
  end
end
