require "pry"

def nyc_pigeon_organizer(data)

  pigeon_names = data.map {|category, attributes|
    attributes.map {|attribute, pigeons| pigeons}
  }.flatten.uniq!

  pigeon_list = {}
  pigeon_names.each {|pigeon| pigeon_list[pigeon] = {}
  }

  pigeon_list.each {|pigeon, pigeon_data|
    data.map {|category, attributes|
      attributes.map {|attribute, pigeons|
        if pigeons.include?(pigeon)
          pigeon_list[pigeon][category] = attribute
        end
      }
    }
  }
  binding.pry
  pigeon_list

end
