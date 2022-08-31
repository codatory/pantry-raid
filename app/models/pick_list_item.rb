class PickListItem < ApplicationRecord
  belongs_to :pick_list
  belongs_to :item
end
