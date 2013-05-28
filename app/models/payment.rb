class Payment < ActiveRecord::Base
  attr_accessible :backer_id, :gateway_fee, :gateway_id, :payer_id, :token
  schema_associations
  validates_presence_of :backer, :token
end
