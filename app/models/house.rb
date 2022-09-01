# == Schema Information
#
# Table name: houses
#
#  id             :integer          not null, primary key
#  city           :string
#  purchase_date  :date
#  state          :string
#  street_address :string
#  zip_code       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
# Indexes
#
#  index_houses_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  owner_id  (owner_id => owners.id)
#
class House < ApplicationRecord
  belongs_to :owner
end
