class Task < ActiveRecord::Base
  def self.all_status
    ["Pending","Open","Closed","Completed","In Progress"]
  end

  def self.all_priorities
    ["Low","High","Medium"]
  end

end
