# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Subscription.create(name: 'Luke barato', is_active: true, type_subscription: Subscription::TYPE_SUBSCRIPTION_MONTHLY)
Subscription.create(name: 'Luke', is_active: true, type_subscription: Subscription::TYPE_SUBSCRIPTION_YEARLY)
Subscription.create(name: 'Empleados sin limites', is_active: true, type_subscription: Subscription::TYPE_SUBSCRIPTION_MONTHLY)
