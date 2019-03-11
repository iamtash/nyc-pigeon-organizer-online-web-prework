require "pry"

def nyc_pigeon_organizer(data)
  binding.pry
  pigeon_names = data.map {|category, attributes|
    attributes.map {|attribute, pigeon_names| pigeon_names}
  }
end
