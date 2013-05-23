class Vendor < ActiveRecord::Base
    validates_uniqueness_of :vendor_name, message: 'That vendor name already exists in our system'
end