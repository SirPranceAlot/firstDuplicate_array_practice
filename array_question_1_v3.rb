def firstDuplicate(a)
  seen = Array.new(a.length,0)
  dupe = Array.new
  
  #seen numbers collected
  a.each_with_index do |num,index|
    #puts "num: #{num} index: #{index}"
    
    if seen[num-1] == 0 then
      seen[num-1] = 1
      #print "seen index: "
      #print num-1
      #puts " changed to 1"
    elsif seen[num-1] == 1 then
      #puts "adding dupe at index #{index} of a to dupe array"
      dupe.push(index)
    end
  end

  if !dupe.empty? then
    return a[dupe.min]
  else
    return -1
  end

  
end

#a = [1, 1, 2, 2, 1]
a = [2, 3, 3, 1, 5, 2]
#a = [1, 1, 2, 2, 1]

puts firstDuplicate(a)