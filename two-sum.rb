# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index { |n1, idx1|
    	nums.each_with_index { |n2, idx2|
    		if n1 + n2 == target 
    			if idx1 != idx2 
    				return [idx1, idx2] 
    			end
    		end
    		
    	}}
    
end

print two_sum([2,7,11,15], 9) # [0, 1]
print two_sum([3,2,4], 6) # [1, 2]