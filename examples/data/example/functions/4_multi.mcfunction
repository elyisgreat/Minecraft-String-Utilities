execute unless score callback string matches 0.. run tellraw @a ["\n"]
# Several strings with same or different callback ids. Strings are put into a queue until they can be handelled
data modify storage string:in input append value {string:"abc",callback:{command:"function example:4_multi",id:1}}
execute unless score callback string matches 0.. run tellraw @a ["[#04] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"abcde",callback:{command:"function example:4_multi",id:1}}
execute unless score callback string matches 0.. run tellraw @a ["[#04] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"abcdefgh",callback:{command:"function example:4_multi",id:1}}
execute unless score callback string matches 0.. run tellraw @a ["[#04] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"123",callback:{command:"function example:4_multi",id:2}}
execute unless score callback string matches 0.. run tellraw @a ["[#04] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
function string:call

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#04] Output #A: ",{"storage":"string:out","nbt":"out","interpret":false}]
execute if score callback string matches 2 run tellraw @a ["[#04] Output #B: ",{"storage":"string:out","nbt":"out","interpret":false}]