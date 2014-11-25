class Lumberjill < ActiveRecord::Base
  belongs_to :lumberjack
  has_many :lumberjacks

  has_many :hots
  has_many :hotties, through: :hots, source: :lumberjack
end
