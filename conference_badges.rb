# badge_maker method, name argument 
#returns message "Hello, my name is #{name}"
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees_list = []
 batch_badge_creator.map do |name|
    badge_maker(name)
  end
end

# def batch_badge_creator(array)
#   badge_messages = []
#   count = 0
#   while count <= array.length - 1
#     badge_messages << badge_maker(array[count])
#     count += 1
#   end
#   badge_messages
# end

# Original code not using each_with_index

# def assign_rooms(array)
#   room_list = []
#   count = 0 
#   while count <= array.length - 1 
#     room_list << "Hello, #{array[count]}! \You'll\ be assigned to room #{count + 1}!"
#     count += 1
#   end
#   room_list
# end

def assign_rooms(array)
  room_assignments = []
  array.each_with_index do |room, index|
    room_assignments << "Hello, #{room}! \You'll\ be assigned to room #{index + 1}!"
  end
  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees) do |attendee|
    puts attendee
  end
    
  assign_rooms(attendees) do |attendee|
    puts attendee
  end
end