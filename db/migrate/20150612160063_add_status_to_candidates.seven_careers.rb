# This migration comes from seven_careers (originally 20150422110804)
class AddStatusToCandidates < ActiveRecord::Migration
  def change
    add_belongs_to :seven_careers_candidates, :status
  end
end
