class Lumberjill < ActiveRecord::Base
  belongs_to :lumberjack
  has_many :lumberjacks
end
