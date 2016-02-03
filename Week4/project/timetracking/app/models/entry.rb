class Entry < ActiveRecord::Base
	validates :hours, numericality: {only_integer: true}, presence: true
	validates :minutes, presence: true, numericality: {only_integer: true}
	validates :date, presence: true
	validates :project_id, presence: true
	belongs_to :project
end
