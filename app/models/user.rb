class User < ActiveRecord::Base

    validates :email, :presence => true
    validates :email, :uniqueness => true
    validates :firstname, :presence =>true
    validates :lastname, :presence =>true

  has_many(:entries, { :class_name => "Entry", :foreign_key => "owner_id" })
  has_many(:share_owner, {:class_name =>"Share", :foreign_key =>"share_owner"})
  has_many(:share_view, {:class_name =>"Share", :foreign_key =>"share_with"})

end
