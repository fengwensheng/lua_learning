--declare && init a table
table = {}
--print the type of a table instance
print('the type of a table instance is: ' .. type(table))
--store
table['a'] = 'a'
table[2] = 2
print('table element a: ' .. table['a'] .. ',2: ' .. table[2])
print('another way ref to string-key table ele: '.. table.a)
--int,string key, vs. js
--can not use table.5
table[5] = 'real-int key'
table['5'] = 'int-string key'
print('int,string key: '..table[5]..table['5'])
--constructor 
--key default to string
tb = {
    a = 'a',
    b = 'b',
    c = 'c',
}
print('tb = {' .. tb.a .. tb.b .. tb.c .. '}')
--non-string key declare format
tb1 = {
    a = 'a',
    ['b'] = 'b',
    [3] = 'c',
}
print('tb = {' .. tb1.a .. tb1.b .. tb1[3] .. '}')