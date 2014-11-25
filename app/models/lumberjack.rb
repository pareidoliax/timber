class Lumberjack < ActiveRecord::Base
  belongs_to :lumberjill
  has_many :lumberjills


  has_and_belongs_to_many :hotties, class_name: 'Lumberjill'
end
