# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
require File.expand_path(File.dirname(__FILE__) + "/environment")
env :PATH, ENV['PATH'] #Add this line
env :GEM_HOME, ENV["GEM_HOME"]
env :GEM_PATH, ENV['GEM_PATH']
set :output, {:standard => 'log/cron_success_log.log', :error => 'log/cron_error_log.log'}
set :environment, Rails.env.to_sym
set :bundle_command, '' 
#every '30 10 28-31 * *' do
#  rake "send_email_automatic:send_notification"
#end

def CalculateCrontab(item_subscription)
    crontab = ''
    if item_subscription[:type_subscription] == Subscription::TYPE_SUBSCRIPTION_MONTHLY
        crontab = '0 0 1 * *'  #cada mes
    else
        crontab = '0 0 1 1 *' #cada año del dia del mes 1 en enero en 00:00
    end
    crontab
end

subscriptions = Subscription.all
subscriptions.each do |item_subscription|
    result = CalculateCrontab(item_subscription);
    every result.to_s do
        rake "task_from_subscription:insert_payment_automatic[" + item_subscription[:id].to_s+ "]"
    end
end