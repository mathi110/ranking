class Player < ActiveRecord::Base


scope :sorted, lambda { order("players.ranking DESC")}
scope :newest_first, lambda { order("players.created_at DESC")}
scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}

end
