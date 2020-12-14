# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    
    # split hash into two arrays, one with keys and one with values, so corresponding key/value pairs have the same index
    hash_keys = name_hash.collect {|key, value| key}
    hash_values  = name_hash.collect {|key, value| value}

    # store smallest value in a variable for use in comparison during iteration
    smallest_value = hash_values[0]

    # iterate over each value of hash_values, compare it to smallest_value, and update smallest_value if the value is lower
    hash_values.each do |current_value|
        if current_value < smallest_value
            smallest_value = current_value
        end
    end

    if name_hash == {}
        nil
    else
        hash_keys[hash_values.index(smallest_value)]
    end

end