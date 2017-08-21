namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # Schedule to run at Sunday at 5pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a link that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end 
    # No spaces or dashes 
    # It has to be exactly 10 characters 
    # All characters have to be a number
  end

end
