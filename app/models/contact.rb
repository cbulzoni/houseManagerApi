# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  company_name :string
#  contact_name :string
#  contact_type :string
#  email        :string
#  phone        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  owner_id     :integer
#
# Indexes
#
#  index_contacts_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  owner_id  (owner_id => owners.id)
#
class Contact < ApplicationRecord
  belongs_to :owner
end
