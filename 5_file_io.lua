--open read-only
fileHandle1 = io.open('file.txt')
print(fileHandle1)
--read & write
fileHandle2 = io.open('file.txt','r+')

--write a file
fileHandle3 = io.open('file.txt','w')
fileHandle3:write('Vincent Feng 5 male\nahhh')

--read a line
fileHandle4 = io.open('file.txt','r')
lines = fileHandle4:lines()
print('all lines are: ')
for line in lines do 
    print('>' .. line)
end

fileHandle1:close()
fileHandle2:close()
fileHandle3:close()
fileHandle4:close()
--read by bits 
-- num, string,'*n' read a number,'*a' read all, default to a line, same as '*l'
print('*********** read bits *************')
fileHandle5 = io.open('file.txt','r')
name = fileHandle5:read(13)
num = fileHandle5:read('*n')
sex = fileHandle5:read()
print(name .. '/' .. num .. '/' .. sex)

--close 
fileHandle5:close()
