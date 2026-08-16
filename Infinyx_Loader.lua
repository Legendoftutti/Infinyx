-- Infinyx loader template
-- Replace USERNAME/REPO/BRANCH with your GitHub values.

local URL = "https://raw.githubusercontent.com/Legendoftutti/Infinyx/BRANCH/Infinyx_Main.lua"

local ok, source = pcall(function()
    return game:HttpGet(URL)
end)

if not ok then
    warn("[Infinyx] Failed to download the main script:", source)
    return
end

local fn, compileError = loadstring(source)
if not fn then
    warn("[Infinyx] Failed to compile the main script:", compileError)
    return
end

local ran, runtimeError = pcall(fn)
if not ran then
    warn("[Infinyx] Main script error:", runtimeError)
end
