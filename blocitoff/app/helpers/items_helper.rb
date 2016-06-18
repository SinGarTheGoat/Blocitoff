module ItemsHelper
  def time_remaining(item)
    distance_of_time_in_words(item.created_at , item.created_at + 7.days, include_seconds: true)
  end
end
