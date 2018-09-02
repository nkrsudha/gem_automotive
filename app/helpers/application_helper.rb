module ApplicationHelper

 def greet(hour_of_clock)
  if hour_of_clock >= 6 && hour_of_clock <= 11
    return "Good Morning"
  elsif hour_of_clock >= 12 && hour_of_clock <= 16
    return "Good Afternoon"
  elsif hour_of_clock >= 17 && hour_of_clock <= 20
    return "Good Evening"
  else
    return "Good Night"
  end
end

end
