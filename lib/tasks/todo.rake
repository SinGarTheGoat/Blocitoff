namespace :todo do
  desc "Delete items older than seven days"
  task delete_items: :environment do
    Item.where("DATE(created_at) <= ?", Date.today - 7.days).destroy_all
  end
end
