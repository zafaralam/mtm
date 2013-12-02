class Project < ActiveRecord::Base
  has_many :tasks,  :dependent => :destroy, :order => "created_at ASC"
end
