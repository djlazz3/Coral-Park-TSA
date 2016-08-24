class AddCompletedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :complete, :boolean, default: false
    add_column :comments, :start_time, :datetime
    add_column :comments, :end_time, :datetime
  end
end
