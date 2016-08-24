class Event < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :comments, :foreign_key => :events_id
  before_destroy {users.clear}
  before_destroy {comments.clear}
end
