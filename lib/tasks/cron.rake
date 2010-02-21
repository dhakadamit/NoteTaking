task :cron => :environment do
 if Time.now.hour == 0
   Rake::Task["db:reset"].invoke
 end
end