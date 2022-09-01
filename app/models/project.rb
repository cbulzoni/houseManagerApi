# == Schema Information
#
# Table name: projects
#
#  id             :integer          not null, primary key
#  date_completed :date
#  date_started   :date
#  description    :text
#  estimated_cost :float
#  house          :string
#  notes          :text
#  priority       :string
#  references     :string
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  contact_id     :integer
#
# Indexes
#
#  index_projects_on_contact_id  (contact_id)
#
# Foreign Keys
#
#  contact_id  (contact_id => contacts.id)
#
class Project < ApplicationRecord
  belongs_to :contact
end
