class Client < ApplicationRecord
    has_many :payments
    accepts_nested_attributes_for :payments
end
