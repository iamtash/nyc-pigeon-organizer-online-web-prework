require "pry"

def nyc_pigeon_organizer(data)

  pigeon_names = data.map {|category, attributes|
    attributes.map {|attribute, pigeon_names| pigeon_names}
  }.flatten.uniq!

  pigeon_list = {}
  pigeon_names.each {|pigeon| pigeon_list[pigeon] = {}
  }
  binding.pry
  pigeon_list
end
