function string:run/compare_found_one
data modify storage string:out out set from storage string:internal out
function string:run/reset

setblock ~ ~ ~5 minecraft:command_block[facing=up]{Command:"help"} destroy
data modify block ~ ~ ~5 Command set from storage string:internal callback
data merge block ~ ~ ~5 {auto:1b}
execute store result score callback string run data get storage string:internal callbackID

schedule function string:run/queue_next 2t