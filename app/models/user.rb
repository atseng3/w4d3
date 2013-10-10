class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :contacts,
           :primary_key => :id,
           :foreign_key => :user_id,
           :class_name => "Contact"

  has_many :contact_shares,
           :primary_key => :id,
           :foreign_key => :user_id,
           :class_name => 'ContactShare'

  has_many :other_contacts, :through => :contact_shares, :source => :contact
end
