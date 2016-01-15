# Use this file to easily define all of your cron jobs.
# http://www.sitepoint.com/schedule-cron-jobs-whenever-gem/
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 4.hours do
    
    command "./lib/tasks/savejsonAPI.rb"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever


