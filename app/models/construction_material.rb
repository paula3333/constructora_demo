class ConstructionMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :construction
end
