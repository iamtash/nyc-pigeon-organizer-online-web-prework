require "pry"

def nyc_pigeon_organizer(data)

  pigeon_names = data.map {|category, attributes|
    attributes.map {|attribute, pigeon_names| pigeon_names}
  }.flatten.uniq!

  pigeon_list = {}
  pigeon_names.each {|pigeon| pigeon_list[pigeon] = {}
  }

  pigeon_list {|pigeon, pigeon_data|
    data.map {|category, attributes|
      attributes.map {|attribute, pigeon_names|
        binding.pry
        if pigeon_names.include?(pigeon)
          pigeon_list[pigeon][category] = attribute
        end
      }
    }
  }

end
