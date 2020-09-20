class Crontab  
    attr_accessor :crontab

    def initialize(subscription)
      @crontab = calculate(subscription)
    end

    private 
    def calculate(item_subscription)
        crontab = ''
        if item_subscription[:type_subscription] == Subscription::TYPE_SUBSCRIPTION_MONTHLY
            crontab = '0 0 1 * *'  #cada mes
        else
            crontab = '0 0 1 1 *' #cada año del dia del mes 1 en enero en 00:00
        end
    end
end