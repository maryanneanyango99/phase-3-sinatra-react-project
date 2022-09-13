class Planner < ActiveRecord::Base
    belongs_to :event
    has_many :requests, through: :events
end