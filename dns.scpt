-- ns - A DNS Script for Textual

on textualcmd(cmd)
	set lRemoteIP to do shell script "nslookup " & cmd
	
	if lRemoteIP ≠ "" then
		set lRemoteDataList to every word of lRemoteIP as list
		set lDesiredIP to item -1 of lRemoteDataList
	else
		return "/debug Usage: /dns <Domain Name or IP Address>"
	end if
	
	return "/debug DNS: " & lDesiredIP
end textualcmd
