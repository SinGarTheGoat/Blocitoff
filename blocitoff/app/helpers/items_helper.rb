module ItemsHelper
  def time_remaining(item)
    distance_of_time_in_words(Time.zone.now, item.created_at + 7.days)
  end
end
