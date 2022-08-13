class Construction < ApplicationRecord
    has_many :construction_materials
    has_many :materials, through: :construction_materials, dependent: :destroy
end
