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



# def test(x)
#     unless x == 3
#         puts "x!=3"
#     else
#         puts "x=3"
#     end
# end

# test(3) # x=3
# test(4) # x!=3

def test(x)
    case x
        when 1..10
            puts "Beween 1 to 10"
        when 11..15
            puts "Between 11 to 15"
        when 20..30
            puts "Between 20 to 30"
        else
            puts "Something else"
    end
end

test(18)
test(20)