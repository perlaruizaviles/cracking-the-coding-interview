require 'byebug'
def format_duration(seconds)
  minute = 60
  hour = 60 * minute
  day = 24 * hour
  year = 365 * day
  
  formatted_date = []
  if seconds >= year
    years, seconds = seconds.divmod(year)
    text = years > 1 ? "#{years} years" : "1 year"
    formatted_date.push(text)
  end
  
  if seconds >= day
    days, seconds = seconds.divmod(day)
    text = days > 1 ? "#{days} days" : "1 day"
    formatted_date.push(text)
  end
  
  if seconds >= hour
    byebug
    hours, seconds = seconds.divmod(hour)
    text = hours > 1 ? "#{hours} hours" : "1 hour"
    formatted_date.push(text)
  end
  
  if seconds >= minute
    minutes, seconds = seconds.divmod(minute)
    text = minutes > 1 ? "#{minutes} minutes" : "1 minute"
    formatted_date.push(text)
  end
  
  if seconds > 0
    text = seconds > 1 ? "#{seconds} seconds" : "1 second"
    formatted_date << text
  end
  
  formatted_date.join(', ').gsub(/\K,/, ' and')
end

puts format_duration(3600)

puts format_duration(62)