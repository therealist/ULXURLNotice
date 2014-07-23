function ulx.nswitch( calling_ply, target_plys, openedurl, should_silent )

	for k,v in pairs( target_plys ) do

		v:SendLua([[gui.OpenURL( "http://reverselogic.site.nfoservers.com/loadingscreen/notices/stopswitching.htm" )]])
	
	end

	if should_silent then
	
		ulx.fancyLogAdmin( calling_ply, true, "#A opened notice #s on #T", openedurl, target_plys )
	
	else
	
		ulx.fancyLogAdmin( calling_ply, "#A opened notice #s on #T", openedurl, target_plys )
		
	end
	
end

local url = ulx.command( "Notices", "ulx nswitch", ulx.nswitch, "!nswitch" )
url:addParam{ type=ULib.cmds.PlayersArg }
url:defaultAccess( ULib.ACCESS_ADMIN )
url:help( "Open a notice to stop switching teams" )
url:setOpposite( "ulx snswitch", { _, _, _, true }, "!snswitch" )
