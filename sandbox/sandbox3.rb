# self-made permutation
require 'pry'

def OverlappingRectangles(strArr)
    first_x = []
    first_y = []
    second_x = []
    second_y = []
    index = 0
    
    #split these up into a collection of arrays that each contain x and y
    strArr = strArr[0].gsub("),(", "), (").delete(")").delete("(").split(", ").map!{|unit| unit.split(",").map!{|number| number.to_i}}
    
    #compute the area of each
    while index < 4
        first_x << strArr[index][0]
        first_y << strArr[index][1]
        index += 1
    end
    while index < 8
        second_x << strArr[index][0]
        second_y << strArr[index][1]
        index += 1
    end
    first_x.uniq!.sort!
    first_y.uniq!.sort!
    second_x.uniq!.sort!
    second_y.uniq!.sort!
    
    shared_x = (first_x.min..first_x.max).to_a & (second_x.min..second_x.max).to_a
    shared_y = (first_y.min..first_y.max).to_a & (second_y.min..second_y.max).to_a
    
    overlapping_area = (shared_x.max - shared_x.min) * (shared_y.max - shared_y.min)
    first_area = (first_x.max - first_x.min) * (first_y.max - first_y.min)

    if first_area / overlapping_area
      first_area / overlapping_area
    else
      0
    end
    
end



OverlappingRectangles(["(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)"])
OverlappingRectangles(["(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)"])
