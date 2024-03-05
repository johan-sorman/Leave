--[[
Copyright © 2020, DaneBlood
All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of SirPopaLot nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Sammeh BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
]]

_addon.name = 'Leave'
_addon.author = 'Daneblood, Updated by Melu'
_addon.version = '5.3.24'
_addon.command = 'Leave'

require('resources')
res = require('resources')

local chatColor = 207

windower.register_event('addon command', function(...)
    local args = T{...}
    local cmd = args[1]
	local zone = windower.ffxi.get_info()['zone']

	if cmd == 'exit' then
		windower.send_command('Leave')

    elseif cmd == 'all' then
        windower.send_ipc_message('Leave_all')
	end


	if zone == 55 then  -- Assaults
		greeting()
		windower.send_command('Input /item "Reef Fireflies" <me>')

	elseif zone == 73 then -- Zhayolm Remnants
		greeting()
		drop_item(5365)
		drop_item(5366)
		drop_item(5367)
		drop_item(5368)
		drop_item(5369)
		drop_item(5370)
		drop_item(5371)
		drop_item(5372)
		drop_item(5373)
		drop_item(5374)
		drop_item(5375)
		drop_item(5376)
		drop_item(5377)
		drop_item(5378)
		drop_item(5379)
		drop_item(5380)
		drop_item(5381)
		drop_item(5382)
		drop_item(5383)
		windower.send_command('Input /item "z. rem. fireflies" <me>')

	elseif zone == 74 then -- Arrapago Remnants
		greeting()
		drop_item(5365)
		drop_item(5366)
		drop_item(5367)
		drop_item(5368)
		drop_item(5369)
		drop_item(5370)
		drop_item(5371)
		drop_item(5372)
		drop_item(5373)
		drop_item(5374)
		drop_item(5375)
		drop_item(5376)
		drop_item(5377)
		drop_item(5378)
		drop_item(5379)
		drop_item(5380)
		drop_item(5381)
		drop_item(5382)
		drop_item(5383)
		windower.send_command('Input /item "a. rem. fireflies" <me>')

	elseif zone == 75 then -- Bhaflau Remnants
		greeting()
		drop_item(5365)
		drop_item(5366)
		drop_item(5367)
		drop_item(5368)
		drop_item(5369)
		drop_item(5370)
		drop_item(5371)
		drop_item(5372)
		drop_item(5373)
		drop_item(5374)
		drop_item(5375)
		drop_item(5376)
		drop_item(5377)
		drop_item(5378)
		drop_item(5379)
		drop_item(5380)
		drop_item(5381)
		drop_item(5382)
		drop_item(5383)
		windower.send_command('Input /item "b. rem. fireflies" <me>')

	elseif zone == 76 then -- Silver Sea Remnants
		greeting()
		drop_item(5365)
		drop_item(5366)
		drop_item(5367)
		drop_item(5368)
		drop_item(5369)
		drop_item(5370)
		drop_item(5371)
		drop_item(5372)
		drop_item(5373)
		drop_item(5374)
		drop_item(5375)
		drop_item(5376)
		drop_item(5377)
		drop_item(5378)
		drop_item(5379)
		drop_item(5380)
		drop_item(5381)
		drop_item(5382)
		drop_item(5383)
		windower.send_command('Input /item "s. rem. fireflies" <me>')


	elseif zone == 78 then -- Einhejar
		greeting()
		drop_item(5414)

	elseif zone == 129 then -- Meeble Burrows
		greeting()
		windower.send_command('Input /item "Hiatus Whistle" <me>')

	elseif zone == 133 then -- Sortie
		greeting()
		windower.send_command('Input /item "Obsid. Wing" <me>')

	elseif zone == 271 then -- Incursion & Delve
		greeting()
		windower.send_command('Input /item "Ontic Extremity" <me>')

	elseif zone == 275 or zone == 189 then -- Vagary
		greeting()
		windower.send_command('Input /item "Ontic Extremity" <me>')

	elseif zone == 292 then
		greeting()
		windower.send_command('Input /item "reisenjima cage" <me>')
	
	elseif zone == 294 or zone == 295 or zone == 296 or zone == 297 then -- Dynamis Divergence
		greeting()
		windower.send_command('Input /item "Black hourglass " <me>')

	elseif zone == 298 then -- Odyssey & HTMB: A Stygian Pact, Champion of the Dawn, Divine Interference, Maiden of the Dusk
		greeting()
		windower.send_command('Input /item "moglophone II" <me>') -- Odyssey
		windower.send_command('Input /item "V. Con. Shard" <me>') -- HTMB: A Stygian Pact, Champion of the Dawn, Divine Interference, Maiden of the Dusk

	else
		windower.add_to_chat(chatColor, 'This location is unknown. Unable to leave')
	end
end)

windower.register_event('ipc message',function (msg)
    if msg == 'Leave_all' then
		windower.send_command('Leave')
    end
end)

function greeting()
	windower.send_command('tr passall"')
	-- windower.add_to_chat(chatColor, 'See you later, Alligator')
end

function drop_item(var_item)
    local inventory = windower.ffxi.get_items(0)
    for i=1,inventory.max do
        if inventory[i].id == var_item then
            windower.ffxi.drop_item(i,1)
            return
        end
    end
end
