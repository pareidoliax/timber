class Lumberjack < ActiveRecord::Base
  belongs_to :lumberjill
  has_many :lumberjills
end
