* https://github.com/jemalloc/jemalloc  
  from https://github.com/cloudwu/skynet/blob/master/HISTORY.md  

* https://www.ibm.com/developerworks/cn/linux/l-memory/  
  from http://www.cnblogs.com/xiaowenhu/p/3222709.html  

* http://www.hboehm.info/gc/  
  from https://github.com/weimingtom/xwing  
  libgc-dev / boehm-gc / Boehm GC
  
* https://github.com/rampantpixels/rpmalloc  

* https://github.com/viruscamp/memwatch  
from luadec  

* https://github.com/luaforge/lmemory  

* https://github.com/cacay/MemoryPool  

* https://github.com/weolar/blinkgc  

* https://github.com/rururutan/np2s/blob/master/np2/common/_memory.c  

* https://github.com/CCareaga/heap_allocator  

* https://github.com/shines77/jemalloc-win32  

* https://github.com/orangeduck/tgc  

* https://github.com/ivmai/bdwgc  
from https://github.com/Unity-Technologies/bdwgc  

* https://github.com/google/tcmalloc  

* dlmalloc  
https://github.com/neonious/esp-idf-dlmalloc  
https://github.com/ennorehling/dlmalloc  
A Memory Allocator, by Doug Lea  
http://gee.cs.oswego.edu/dl/html/malloc.html  

* dlmalloc、ptmalloc与glibc堆漏洞利用  
https://blog.csdn.net/u010206565/article/details/105323368  

* LVGL v7 General and portable implementation of malloc and free  
https://github.com/lvgl/lvgl/blob/release/v7/src/lv_misc/lv_mem.c  
https://forum.lvgl.io/t/how-to-calculate-allocated-memory-in-lvgl/6560  
```
    lv_mem_monitor_t mon1, mon2;
    lv_mem_monitor(&mon1);
    create_screen();
    lv_mem_monitor(&mon2);
    uint32_t mem_used = mon1.free_size - mon2.free_size;
```
