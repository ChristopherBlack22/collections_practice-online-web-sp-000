def sort_array_asc(array)
  array.sort {|a,b| a<=>b}
end

def sort_array_desc(array)
  array.sort {|a,b| b<=>a}
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1] 
  array 
end 

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array 
end 

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |string| 
    string_array = string.split("")
    string_array[2] = "$"
    new_array << string_array.join
    end
  new_array
end 

def find_a(array)
  array.select {|string| string.start_with? "a" }
end

def sum_array(array)
  array.inject {|sum, number| sum += number}
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index != 1 
      element << "s" 
    else
      element 
    end
  end 
end