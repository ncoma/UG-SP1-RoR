class Group < ActiveRecord::Base
validates :nombre, presence: true, length: {is: 1}, uniqueness: true

end
