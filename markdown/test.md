# test

http://blog.csdn.net/testcs_dn/article/details/44274339

###时序图结构

 ```sequence
Title:连接建立的过程
客户主机->服务器主机: 连接请求（SYN=1,seq=client_isn） 
服务器主机->>客户主机: 授予连接（SYN=1,seq=client_isn）\n ack=client_isn+1
客户主机-->服务器主机: 确认（SYN=0,seq=client_isn+1）\nack=server_isn+1
 ```
示例二

 ```sequence
Title:连接建立的过程
客户主机-->>服务器主机: 连接请求（SYN=1,seq=client_isn） 
服务器主机-->客户主机: 授予连接（SYN=1,seq=client_isn）\n ack=client_isn+1
客户主机->>服务器主机: 确认（SYN=0,seq=client_isn+1）\nack=server_isn+1
 ```


### 跨对象的消息

 ```sequence
Title: Here is a title 
Note right of A: 通过角色、对象列表，\n您可以更改它们的顺序
participant C
participant B
participant A
A->B: Normal line 
B-->C: Dashed line 
C->>D: Open arrow 
Note left of D:haha
D-->>A: Dashed open arrow
 ```

```flow
st=>start: Start:>http://www.google.com[blank]
e=>end:>http://www.google.com
op1=>operation: My Operation
sub1=>subroutine: My Subroutine
cond=>condition: Yes
or No?:>http://www.google.com
io=>inputoutput: catch something...

st->op1->cond
cond(yes)->io->e
cond(no)->sub1(right)->op1
```

```flow
st=>start: 开始
e=>end: 结束
o=>operation: 操作
a=>condition: AA
b=>condition: BB

st->o
o->a
a(yes)->b
a(no)->e
a(cc)->o
b(yes)->e

```

