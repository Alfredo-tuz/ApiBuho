# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
2.times do
    Subscription.create(name: Faker::Subscription.plan, is_active: true, type_subscription: Subscription::TYPE_SUBSCRIPTION_MONTHLY)
end

2.times do
    Subscription.create(name: Faker::Subscription.plan, is_active: true, type_subscription: Subscription::TYPE_SUBSCRIPTION_YEARLY)
end