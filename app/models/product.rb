class Product < ActiveRecord::Base
  has_many :reviews
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tag_string)

  end
end
