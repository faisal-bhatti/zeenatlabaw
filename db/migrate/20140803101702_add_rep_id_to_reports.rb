class AddRepIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :rep_id, :string
  end
end
