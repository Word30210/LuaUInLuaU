local Lexer = require(game.ServerStorage.Lua.LexerParser.lexer)

-- Lexer [=[-- test comment!
-- --[[
--     test multi-line comment!
-- ]]
-- local find = string.find
-- local gsub = string.gsub
-- local sub = string.sub

-- local luaKeywords = require(script.Parent.luaKeywords)
-- local KEYWORDS = luaKeywords.KEYWORDS
-- local BUILTINS = luaKeywords.BUILTINS
-- local LIBRARYS = luaKeywords.LIBRARYS

-- local PRE_WHITESPACES = "^[%c%s]*"
-- local WHITESPACES = "[%c%s]*"
-- local function REMOVE_WHITESPACES(content)
--     return gsub(content, "[%c%s]+", "")
-- end

-- local IDEN = "[%a_][%w_]*"
-- local NUMBER = "%d+[%.]?%d*"
-- local STRING = "([\"'])[^\n]-[^\\]%1"
-- local STRING_EMPTY = "([\"'])%1"
-- local STRING_MULTI = "%[(=*)%[.-%]%1%]"
-- local STRING_INTER = "`[^\n]-`"
-- local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]"
-- local COMMENT = "%-%-[^\n]-\n"
-- local OPERATORS = "[<>=~{},:;/#%.%+%-%*%^%%%(%)%[%]]"

-- local MATCHS = {
--     { PRE_WHITESPACES .. IDEN .. WHITESPACES, "IDEN" };

--     { PRE_WHITESPACES .. NUMBER .. WHITESPACES, "NUMBER" };

--     { PRE_WHITESPACES .. STRING .. WHITESPACES, "STRING" };
--     { PRE_WHITESPACES .. STRING_EMPTY .. WHITESPACES, "STRING" };
--     { PRE_WHITESPACES .. STRING_MULTI .. WHITESPACES, "STRING" };
--     { PRE_WHITESPACES .. STRING_INTER .. WHITESPACES, "STRING_INTER" };

--     { PRE_WHITESPACES .. COMMENT_MULTI .. WHITESPACES, "COMMENT" };
--     { PRE_WHITESPACES .. COMMENT .. WHITESPACES, "COMMENT" };

--     { PRE_WHITESPACES .. OPERATORS .. WHITESPACES, "OPERATOR" };
-- }

-- local PATTERNS, TOKENS = {}, {}
-- for i, match in MATCHS do
--     PATTERNS[i] = match[1]
--     TOKENS[i] = match[2]
-- end

-- local function Lexer(source: string, init: number)
--     local size = #source
--     local pos = init or 0
--     local start, finish
--     while pos <= size do
--         local matched = false
--         for i, pattern in PATTERNS do
--             local _start, _finish = find(source, pattern, pos)
--             if not _start then
--                 continue
--             end
--             pos = _finish + 1
--             matched = true
--             local content = sub(source, _start, _finish)
--             local token = TOKENS[i]
--             if token ~= "STRING" and token ~= "STRING_INTER" then
--                 content = REMOVE_WHITESPACES(content)
--             end
--             if token == "IDEN" then
--                 if KEYWORDS[content] then
--                     token = "KEYWORD"
--                 elseif BUILTINS[content] then
--                     token = "BUILTIN"
--                 elseif LIBRARYS[content] then
--                     token = "LIBRARY"
--                 end
--             elseif token == "" then

--             end
--             print(content, token, _start, _finish)
--             start = _start
--             finish = _finish
--         end
--         if not matched then
--             print "not matched"
--             warn(sub(source, finish - 10, #source))
--             return
--         end
--     end
-- end

-- return Lexer]=]

Lexer [=[
    local hello = "hello"
    local banana = "banana"
    
    local function reverse(str: string)
    	local pattern = string.rep("(.)", #str)
    	local repl = ""
    	for i = #str, 1, -1 do
    		repl ..= `%{ i }`
    	end
    
    	local result, _ = string.gsub(str, pattern, repl)
    
    	return result
    end
    
    print(reverse(hello))
    print(reverse(banana))
]=]