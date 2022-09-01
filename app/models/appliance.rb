# == Schema Information
#
# Table name: appliances
#
#  id             :integer          not null, primary key
#  appliance_type :string
#  category       :string
#  last_serviced  :date
#  make           :string
#  model          :string
#  notes          :text
#  service_due    :date
#  year           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  contact_id     :integer
#  house_id       :integer
#
# Indexes
#
#  index_appliances_on_contact_id  (contact_id)
#  index_appliances_on_house_id    (house_id)
#
# Foreign Keys
#
#  contact_id  (contact_id => contacts.id)
#  house_id    (house_id => houses.id)
#
class Appliance < ApplicationRecord
  belongs_to :contact
  belongs_to :house
end
