# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :integer
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  validates :name,presence: true,
                  length: { in: 3..140 }
  validates :price,presence: true,
                   numericality: { only_integer: true,
                                   greater_than: 0 }
end
