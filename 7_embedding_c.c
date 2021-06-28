#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

/*
编译命令
gcc -c 7_embedding_c.c
gcc -lm -o run 7_embedding_c.o liblua.a
./run
*/

int main() {
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    luaL_loadfile(L,"test_embedding_c.lua");
    /*
    //start
    //这里相当于设置全局变量a="测试"
    lua_pushstring(L,"测试");
    lua_setglobal(L,"a");
    //print函数压栈
    lua_getglobal(L,"print");
    //参数压栈yiban
    lua_getglobal(L,"a");
    //调用函数,1个参数，0个返回值
    lua_call(L,1,0);
    //end
    */
    lua_close(L);
    return 0; 
}