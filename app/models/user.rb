class User < ActiveRecord::Base


scope :sorted, lambda { order("users.name ASC")}
scope :newest_first, lambda { order("users.created_at DESC")}
scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}


end
