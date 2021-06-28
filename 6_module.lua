-- module is just a normal lua table

-- module path workspace
print('package workspace context:')
print(package.path)

-- create module
local myModule = {}
myModule.foo = 5
myModule.bar = function ()
    myModule.foo = 10
end
return myModule

