local keywords = {
    KEYWORDS = {
        ["and"] = true;
        ["break"] = true;
        ["continue"] = true;
        ["do"] = true;
        ["else"] = true;
        ["elseif"] = true;
        ["end"] = true;
        ["false"] = true;
        ["for"] = true;
        ["function"] = true;
        ["if"] = true;
        ["in"] = true;
        ["local"] = true;
        ["nil"] = true;
        ["not"] = true;
        ["or"] = true;
        ["repeat"] = true;
        ["return"] = true;
        ["then"] = true;
        ["true"] = true;
        ["until"] = true;
        ["while"] = true;
    };
    BUILTINS = {
        ["assert"] = true;
        ["error"] = true;
        ["gcinfo"] = true;
        ["getfenv"] = true;
        ["getmetatable"] = true;
        ["next"] = true;
        ["newproxy"] = true;
        ["print"] = true;
        ["rawequal"] = true;
        ["rawget"] = true;
        ["rawset"] = true;
        ["select"] = true;
        ["setfenv"] = true;
        ["setmetatable"] = true;
        ["tonumber"] = true;
        ["tostring"] = true;
        ["type"] = true;
        ["typeof"] = true;
        ["ipairs"] = true;
        ["pairs"] = true;
        ["pcall"] = true;
        ["xpcall"] = true;
        ["unpack"] = true;
    };
    LIBRARYS = {
        ["math"] = true;
        ["table"] = true;
        ["string"] = true;
        ["coroutine"] = true;
        ["bit32"] = true;
        ["utf8"] = true;
        ["os"] = true;
        ["debug"] = true;
        ["buffer"] = true;
    };
}

return keywords