# @param {Integer} x
# @return {Integer}
def reverse(x)
	if x > 0
    	foo = x.to_s.reverse.to_i
    	foo > 2147483647 ? 0 : foo
    elsif x.abs >= 2147483647
    	0
    else
    	foo = -1 * x.to_s.gsub('-', '').reverse.to_i
    	foo.abs > 2147483647 ? 0 : foo
    end
end

print reverse(1534236469) # should be 0