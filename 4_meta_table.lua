--define
meta = {}
meta.__add = function (left, right)
    return left.value + right
end
--link
container = {
    value = 1
}
setmetatable(container, meta)
--use
result = container + 2
print(result)

--meta table can be container itself
slefContainer = {
    value = 1,
    __add = function ( left, right )
        return left.value + right
    end
}
setmetatable(slefContainer,slefContainer)
print(slefContainer+2)
--get the meta table of one table
print('the defalut meta table prop value: ')
print(getmetatable(meta))
print('not nil vale: ')
print(getmetatable(container))

--use __index
indextable = {
    foo = 'bar',
    __index = function(table, key)
        if key == 'foo' then 
            return foo
        end
        return 'NOT FOO'
    end
}
setmetatable(indextable, indextable)
print(indextable.foo)
print(indextable.nilprop)

--use __newindex
newindexmeta = {
    __index = function(table, key)
        return newindexmeta[key]
    end,
    __newindex = function(table, key, value) 
        newindexmeta[key] = value
    end
}
newindextable = {}
setmetatable(newindextable, newindexmeta)
newindextable.newkey = 'newvalue' --invoke __newindex
print(newindextable.newkey)--invoke __index

--rawset & rawget
rawtable = {}
rawset(rawtable,'foo','bar')
print('rawset(): '..rawtable.foo)

