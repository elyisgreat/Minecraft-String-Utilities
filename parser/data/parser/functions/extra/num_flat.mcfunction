#converting array of numbers into single value
data modify storage rev_conv:main in set from storage parse:main temp.array
scoreboard players set base= rev_conv.num 10
function rev_conv:call

#writing output value into pair
data modify storage parse:main pair.Value set from storage rev_conv:main out