namespace :update_whenever do
  desc "Update whenever"
  task crontabUpdate: :environment do
    begin  # "try" block
      exec "whenever --update-crontab"
    rescue Exception => ex # optionally: `rescue Exception => ex`
      msj =  ex.message
      puts ex
    end
  end

end
