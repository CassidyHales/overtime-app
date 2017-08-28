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

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin.email).deliver_later
      end 
    end
  end

end
