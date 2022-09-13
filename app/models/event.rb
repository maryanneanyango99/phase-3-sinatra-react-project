class Event < ActiveRecord::Base
    has_many :requests
    has_many :planners, through: :requests
end