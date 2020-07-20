class Subscription < ApplicationRecord
    
    has_many :payments

    TYPE_SUBSCRIPTION_YEARLY =1
    TYPE_SUBSCRIPTION_MONTHLY =2

end
