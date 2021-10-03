RegisterServerEvent('nad_rockstar:log')
AddEventHandler('nad_rockstar:log', function(id, option)
    local date_table = os.date("*t")
    local hour, minute, second = date_table.hour, date_table.min, date_table.sec
    local year, month, day = date_table.year, date_table.month, date_table.day
    local result = string.format("%d-%d-%d %d:%d:%d", year, month, day, hour, minute, second)

    local name = GetPlayerName(id)
    local identifier = GetPlayerIdentifier(id, 0)

    if option == 'record' then
        local msg = result.." // "..name.." ("..identifier..")".. Config.logRecord
        if Config.logToFile == true then
            LogToFile(msg)
        end
        if Config.printToConsole == true then
            print(msg)
        end
    elseif option == 'saveclip' then
        local msg = result.." // "..name.." ("..identifier..")".. Config.logSaveClip
        if Config.logToFile == true then
            LogToFile(msg)
        end
        if Config.printToConsole == true then
            print(msg)
        end
    elseif option == 'delclip' then
        local msg = result.." // "..name.." ("..identifier..")".. Config.logDelClip
        if Config.logToFile == true then
            LogToFile(msg)
        end
        if Config.printToConsole == true then
            print(msg)
        end
    else 
        local msg = result.." // "..name.." ("..identifier..")".. Config.logEditor
        if Config.logToFile == true then
            LogToFile(msg)
        end
        if Config.printToConsole == true then
            print(msg)
        end
    end

end)

function LogToFile(text)
    local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. text
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
end