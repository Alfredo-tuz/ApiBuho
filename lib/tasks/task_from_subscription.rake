namespace :task_from_subscription do
    desc "TODOPURCHE"
    task :insert_payment_automatic ,[:Automatic] =>[:environment] do |task , args|
      begin  # "try" block
        item_subscription_id = args[:Automatic]
        puts item_subscription_id
        puts 'XXXXXXXX'
        payment= Payment.where(subscription_id:item_subscription_id).last
        payment_history = payment.payment_history
        payment_history[:status] = PaymentHistory::STATUS_PAYMENT_PAID
        payment_new  = Payment.new(client_id:payment[:client_id],
                                 subscription_id:payment[:subscription_id],
                                 type_payment:payment[:type_payment],
                                 date_payment:DateTime.now,
                                 payment_history:payment_history)
        payment_new.save
            
      rescue Exception => ex # optionally: `rescue Exception => ex`
        msj =  ex.message
        puts msj
      end
    end
  
  end
  