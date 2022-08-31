class PickList < ApplicationRecord
    has_many :pick_list_items, dependent: :destroy
end
