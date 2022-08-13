class Brand < ApplicationRecord
    has_many :materials, dependent: :destroy
end
