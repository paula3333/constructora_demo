class Material < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  has_many :construction_materials
  has_many :constructions, through: :construction_materials, dependent: :destroy
end
