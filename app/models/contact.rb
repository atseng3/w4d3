class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id
  validates :name, :email, :user_id, :presence => true

  belongs_to :user,
             :primary_key => :id,
             :foreign_key => :user_id,
             :class_name => 'User'

  has_many :users, :through => :contact_shares, :source => :user
end
