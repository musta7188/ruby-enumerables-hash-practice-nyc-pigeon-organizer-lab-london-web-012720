def nyc_pigeon_organizer(pigeon_data)
  new_hash_pigeon = {}

  pigeon_data.each do |first_key, all_the_rest|
    all_the_rest.each do |second_key, arrays|
      arrays.each  do |names|
        new_hash_pigeon[names] = {color:[], gender: [], lives:[]}
      end
    end
  end

  keys_of_hash = new_hash_pigeon.keys

  pigeon_data[:color].each do |color_type, names|
    names.each do |pigeon_name|
      keys_of_hash.each do |first_key|
        if first_key === pigeon_name
          new_hash_pigeon[first_key][:color] << color_type.to_s
        end
      end
    end
  end

  pigeon_data[:gender].each do |gender, array_gender|
    array_gender.each do |name_gender|
      keys_of_hash.each do |first_key|
        if name_gender === first_key
          new_hash_pigeon[first_key][:gender] << gender.to_s
        end
      end
    end
  end

  pigeon_data[:lives].each do |place, array_name|
  array_name.each do |names|
    keys_of_hash.each do |first_key|
      if names === first_key
        new_hash_pigeon[first_key][:lives] << place.to_s
      end
    end
  end
  end

end
