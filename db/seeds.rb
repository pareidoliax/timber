
male_names = %w(James Michael Robert John David William Richard Thomas Mark Charles Steven Gary Joseph Donald Ronald Kenneth Paul Larry Daniel Stephen Dennis Timothy Edward Jeffrey George Gregory Kevin Douglas Terry Anthony)

female_names = %w(Mary Linda Patricia Susan Deborah Barbara Debra Karen Nancy Donna Cynthia Sandra Pamela Sharon Kathleen Carol Diane Brenda Cheryl Janet Elizabeth Kathy Margaret Janice Carolyn Denise Judy Rebecca Joyce Teresa)

tree_names = %w(Cedar Cypress Larch Spruce Chinkapin Basswood Beech Elm Alder Hackberry Holly Ash Plum Sycamore Walnut Pine Spinosa Fir Oak Juniper Triloba Tamarisk Willow Hemlock Maple Aspen Balsam Birch Hickory Cherry Butternut Redwood Yew Ironwood Hackberry)

15.times do
  lumberjack = Lumberjack.new(
    name:     "#{male_names.sample} #{tree_names.sample}",
  )
  lumberjack.save!
end
lumberjacks = Lumberjack.all
puts "#{lumberjacks.count} lumberjacks created"

15.times do
  lumberjill = Lumberjill.new(
    name:     "#{female_names.sample} #{tree_names.sample}",
  )
  lumberjill.save!
end
lumberjills = Lumberjill.all
puts "#{lumberjills.count} lumberjills created"

lumberjacks.each {|lumberjack| lumberjack.update_attribute :lumberjill_id, lumberjills.sample.id}
puts "Lumberjacks have picked true loves"
puts lumberjacks.pluck(:lumberjill_id).to_s

lumberjills.each {|lumberjill| lumberjill.update_attribute :lumberjack_id, lumberjacks.sample.id}
puts "Lumberjills have picked true loves"
puts lumberjills.pluck(:lumberjack_id).to_s
