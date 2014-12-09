class Share < ActiveRecord::Base


  validates :entry_id, :uniqueness => {:scope => :share_with}



  belongs_to(:owner, { :class_name => "User", :foreign_key => "share_owner" })
      validates :owner, :presence => true


  belongs_to(:can_view, { :class_name => "User", :foreign_key => "share_with" })
   validates :can_view, :presence => true

  belongs_to(:entry, { :class_name => "Entry", :foreign_key => "entry_id" })
      validates :entry, :presence => true



end
