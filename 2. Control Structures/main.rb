# def test(x)
#     if x == 1
#         puts "x=1"
#     elsif x == 2
#         puts "x=2"
#     else
#         puts "Neither x=1 nor x=2"
#     end
# end

# test(1) # x=1
# test(2) # x=2
# test(0) # Neither x=1 nor x=2



def test(x)
    unless x == 3
        puts "x!=3"
    else
        puts "x=3"
    end
end

test(3) # x=3
test(4) # x!=3