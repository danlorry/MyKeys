class Reviewagent < ActiveRecord::Base
  belongs_to :agent
  belongs_to :user
end
