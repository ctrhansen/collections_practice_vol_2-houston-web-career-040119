def begins_with_r(array)
    word = true
    array.each do |element|
       word = false if element[0] != "r"
    end
    word
end

def contain_a(array)
    new_array = []
    array.each do |word|
        if word.include?("a")
            new_array << word
        end
    end
    new_array
end

def first_wa(array)
    first_word = nil
    array.find do |word|
       if word.match(/wa/)
        first_word = word
       end
    end
    first_word
end

def remove_non_strings(array)
    new_array = []
    array.each do |word|
        if word.is_a?(String)
        new_array << word
        end
    end
    new_array    
end

def count_elements(array)
    # array.each_with_object(Hash.new(0)) { 
    #     |word,counts| counts[word] += 1 }

        
    array.each do |new_hash|
        new_hash[:count] = 0
        name = new_hash[:name]
            array.each do |hash|
                if hash[:name] == name
                  new_hash[:count] += 1
                end
            end
    end.uniq
          
end

def merge_data(array1, array2)
    array2[0].map do |name, prop_hash|
        new_prop_hash = {}
        array1.each do |new_attr_hash|
          if new_attr_hash[:first_name] == name
            new_prop_hash = prop_hash.merge(new_attr_hash)
          end
        end
        new_prop_hash
      end

end

def find_cool(array)
    new_array = []
    array.each do |element|
        new_array << element if element[:temperature] == "cool"
    end
    new_array
  end

def organize_schools(hash)
    organized_schools = {}
    hash.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
end