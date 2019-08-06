class RyUploder < ApplicationRecord
	has_many_attached :uplodes, dependent: :destroy
end
