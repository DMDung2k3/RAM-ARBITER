# RAM-ARBITER
Designed and implemented a RAM Arbiter using Verilog HDL in Vivado HLS, improving memory allocation efficiency by optimizing latency and throughput. Focused on improving system performance and resource efficiency under varying workloads by implementing advanced memory arbitration logic

1.1. Problem Statement:
In today's world, with the prevalence of electronic systems and computers, managing memory access becomes a challenge for designers. In an asynchronous environment, where there is no common clock to synchronize events, ensuring efficient and fair memory access becomes a complex issue.
One of the significant challenges arises from concurrently managing multiple memory access requests from different components. When multiple parts of the system simultaneously request access to the memory, deciding which request takes priority becomes crucial. This raises the issue of designing an effective Arbiter, a component that determines which component is allowed memory access and when.

1.2. Problem Resolution:
To address these challenges, the project "Designing RAM Arbiter" focuses on researching and developing an intelligent and flexible Arbiter. The Arbiter will ensure that every memory access request is handled fairly, stably, and efficiently.
Through the research process, we will explore methods and algorithms to make informed decisions when multiple requests coincide. The goal is to build an Arbiter with flexible responsiveness, minimizing conflicts and ensuring that every system component has an opportunity for efficient memory access.
This project is not only technically oriented but also an opportunity to contribute to the development of asynchronous systems and memory management. It provides a practical solution to one of the most critical issues in this field.

1. TOP LEVEL BLOCK DIAGRAM
![image](https://github.com/user-attachments/assets/4a421537-1f93-4bdf-acc4-97cdb2e65687)

![image](https://github.com/user-attachments/assets/e5429f9a-c44f-4967-b51b-0ad428d86969)

This is the top level block diagram which can interface with two clients (client1 and client2) with their respective input and output ports. But client1 has a higher priority than client2. So client1 can have the access of the RAM any time it wants. But if client2 wants to access the RAM then it must send a request first and according to the following condition Client2 can get the access of the RAM:
1) If client1 is only writing then Client2 can get the access of the RAM for reading only 
2) If client1 is only reading then client2 can get the access of the RAM for writing only 
3) If client1 is reading and also writing then client2 cannot get any access of the RAM
4) If client1 is not doing anything then Client2 can get the access of the RAM either for reading or writing.
![image](https://github.com/user-attachments/assets/aad47e3f-bab3-42af-8049-4df1c65418bd)

2.3. SCHEMATIC OF RAM      
![image](https://github.com/user-attachments/assets/962cfd73-90bf-4046-a840-aa991162aa0e)
Waveforms:
RAM WRITE OPERATION ( CASE 1 )
![image](https://github.com/user-attachments/assets/bb5f85a2-531e-4fff-815c-028c745d0239)

RAM READ OPERATION ( CASE 2 )
![image](https://github.com/user-attachments/assets/d2950f84-2ff9-496a-b4f8-48577beeefa9)

RAM READ AND WRITE OPERATION ( CASE 3 )
![image](https://github.com/user-attachments/assets/6c004d3b-4b09-43a7-aba1-c39f86a5787f)

ARBITER
BLOCK DIAGRAM
![image](https://github.com/user-attachments/assets/89ee38ec-49cd-4a59-b4b0-ff19b5a273d6)
FSM DESIGN BLOCK
This FSM determines which client gets access to the specified RAM depending on the following conditions:
1) If Client1 is writing into RAM but not reading, then Client2 can read but can’t write.
2) If Client1 is reading from RAM but not writing, then Client2 can write but can’t read.
3) If Client2 is reading and Client1 wants to read then Client1 gets access to RAM.
4) If Client2 is writing and Client1 wants to write then Client1 gets access to RAM.

![image](https://github.com/user-attachments/assets/768ac027-6e47-4e21-9491-7de53bdceeb0)

On applying RST_N=0 FSM will be in RESET state and after RST_N=1 it will take RAM_DEPTH cycles to reach in IDLE state and any input can be accepted after reaching IDLE state. 
Transition of states depending upon different input conditions from the clients are given 
below:
1. IDLE----->Client1_Read==> RD_EN_C1=1.
2. Client1_Read----->IDLE==> RD_EN_C1=0.
3. IDLE---->Client1_Write==> WR_EN_C1=1.
4. Client1_Write---->IDLE==> WR_EN_C1=0.
5. IDLE--->Client2_Read==> RD_EN_C1=0 and REQUEST_C2=1 and D_NOT_WRITE_C2=1.
6. Client2_Read--->IDLE==>REQUEST_C2=0 or REQUEST_C2=1 and D_NOT_WRITE_C2=0.
7. IDLE--->Client2_Write==>WR_EN_C1=0 and REQUEST_C2=1 and D_NOT_WRITE_C2=0.
8. Client2_Write-->IDLE==>REQUEST_C2=0 or REQUEST_C2=1 and 
RD_NOT_WRITE_C2=1.
9. Client2_Read---->Client1_Read===>RD_EN_C1=1.
10. Client1_Read----->Client2_Read===>RD_EN_C1=0 and REQUEST_C2=1 and 
RD_NOT_WRITE_C2=1.
11. Client2_Write----->Client1_Write==>WR_EN_C1=1.
12. Client1_Write----->Client2_Write==>WR_EN_C1=0 and REQUEST_C2=1 and 
RD_NOT_WRITE_C2=0.
13. Client1_Read--->Client1_Read==>RD_EN_C1=1.
14. Client1_Write--->Client1_Write==>WR_EN_C1=1.
15. Client2_Read--->Client2_Read===>REQUEST_C2=1 and RD_NOT_WRITE_C2=1 and RD_EN_C1=0.
16. Client2_Write---->Client2_Write===>REQUEST_C2=1 and RD_NOT_WRITE_C2=0 and WR_EN_C1=0.
17. IDLE---->IDLE===>RD_EN_C1=0 and WR_EN_C1=0 and REQUEST_C2=0.
18. RESET--->RESET===>if RST_N=0 holds or RST_N=0 for once and RST_DONE=0 
19. RESET--->IDLE===>RST_N=1 and RST_DONE=1.
20. IDLE--->RESET==>RST_N=0.

SCHEMATIC 
![image](https://github.com/user-attachments/assets/891f1e8a-0a02-4715-b500-dd5b7e5ca75a)


