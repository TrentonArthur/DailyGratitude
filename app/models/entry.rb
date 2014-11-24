class Entry < ActiveRecord::Base
    validates :text, :presence => true


    belongs_to(:owner, { :class_name => "User", :foreign_key => "owner_id" })
        validates :owner, :presence =>true



    has_many(:shares, {:class_name =>"Share", :foreign_key =>"entry_id"})
    #has_many(:viewers, {:class_name => "User", :foreign_key =>"share_with"}), :through (:shares, {:class_name => "Share", :foreign_key =>"entry_id"})

    has_many :viewers, :through => :shares
end
