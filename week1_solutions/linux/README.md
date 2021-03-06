## Getting Familiar With Linux

The goal of this part of the assignment is to get familiar with common (Linux) commands, <code>/proc</code> filesystem in Linux and process behaviour information, monitoring and control.

In Ubuntu, login and launch the command prompt (aka Terminal). **CTRL + ALT + T** is the keyboard
shortcut, or you can search for **Terminal** by clicking on the Show Applications button in the bottom-left corner.

### Useful References

- [Unix Tutorial for the Beginner](http://www.ee.surrey.ac.uk/Teaching/Unix/) ( Go through Tutorial 1 and Tutorial 2. Others are optional)
- [Basic Linux Commands](https://maker.pro/linux/tutorial/basic-linux-commands-for-beginners) (Optional)


### Basic commands
Following are some basic Linux commands. To know more about them use: <code> man \<command\> </code>. Start with <code> man man</code>.

 -  Make a new directory: <code>mkdir \<dirname\></code>
 -  Remove directory if it is empty else throw an error: <code>rmdir \<dirname\></code>
 -  Copy file: <code>cp \<source\> \<destination\></code>
 -  Create a new file: <code>touch \<filename\></code>
 -  Delete a single file: <code>rm \<filename\></code>
 -  Delete a whole folder: <code>rm -r \<foldername\></code>
 -  Change working directory: <code>cd \<path\></code>
 -  Move to parent directory: <code>cd ..</code>
    and Move to previous directory: <code>cd -</code>
 -  List contents of a folder: <code>ls</code>
 -  Print current directory: <code>pwd</code>

### Some More Commands
 -  <code>top</code> : top provides a continuous collective view of the system and operating system state.

 -  <code>ps</code> : The ps command is used to view the processes running on a system. It provides a snapshot of the processes along with detailed process information like process-id, cpu usage, memory usage etc.

 -  <code>lsof</code> : lsof is used to list open files. It lists details of the file itself and details of users, processes which are using the files..
 
 -  Understand the <code>/proc</code> filesystem in Linux. The <code>/proc</code> file system is a mechanism provided by Linux for the kernel to report information about the system and processes to users. The <code>/proc</code> file system is nicely documented in the proc man page. You can access this document by running the command <code>man proc</code> on a Linux system. Understand the system-wide <code>proc</code> files such as <code>meminfo</code> and <code>cpuinfo</code>, and per-process files such as <code>status</code> and <code>stat</code>. System related <code>proc</code> files are available in the directory <code>/proc/</code>, and process related <code>proc</code> files are available at <code>/proc/\<process-id\>/</code>

### Exercises

1. Find the variant of the <code>ls</code> command (i.e. argument(s) to be used) to list contents of a folder including its hidden files, the variant of <code>cp</code> to copy folder and the command to rename a file.

    <p align="center">
    <img src="./Picture1.png" width = "1024"/>
    </p>
    <p align="center">
    <img src="./Picture2.png" width = "1024"/>
    </p>
    <p align="center">
    <img src="./Picture3.png" width = "1024"/>
    </p>

2. In this question, we will understand the hardware configuration of your working machine using the <code>/proc</code> filesystem.

    - Run command <code>more /proc/cpuinfo</code> and explain the following terms: <code>processor</code> and <code>cores</code>. Use the command <code>lscpu</code> to verify your definitions.
    
    <p>
    <b>Processor :</b> Processor is the fundamental processing unit that executes instructions in a computer. They are the logical units that read, write and process data from the memory of the computer.<br>
    <b>Cores :</b> Cores are physical logical circuitry consisting of NAND and NOR gates. A core may consist of one or more processors based on if it is single threaded or multi threaded processing cores.
    </p>
    <p align="center">
    <img src="./Picture4.png" width = "1024"/>
    </p>
    - How many CPU sockets, cores, and processors does your machine have?
    <p>
    1 Socket, 4 Cores and 8 Processors
    </p>
    - What is the frequency of each processor?
    <p>
    Processor0 - 1800.00 MHz
    Processor1 - 1800.00 MHz
    Processor2 -	1800.00 MHz
    Processor3 -	1800.00 MHz
    Processor4 -	1800.00 MHz
    Processor5 -	1800.00 MHz
    Processor6 -	1800.00 MHz
    Processor7 -	1800.00 MHz
    </p>
    - How much memory does your machine have?
    <p>
    8 Gigabytes of RAM - 256 Gigabytes of nvme - 1 Terabyte of HDD memory
    </p>
    <p align="center">
    <img src="./Picture5.png" width = "1024"/>
    </p>
    - How much of it is free and available? What is the difference between them?
    <p>
    Free Memory - 4.19 GB
    Available Memory - 6.31 GB
    <br>
    Free Memory is the amount of memory which is not being used for any current processes.
    Available Memory is the memory that is available for allocation to a new or existing processes.
    <br>
    </p>
    - What is the total number of user-level processes in the system?
    <p align="center">
    <img src="./Picture6.png" width = "1024"/>
    </p>
    - What is the total number of number of forks since the boot in the system ?
    <p align="center">
    22514 forks
    <img src="./Picture7.png" width = "1024"/>
    </p>
    - How many context switches has the system performed since bootup?
    <p align="center">
    <img src="./Picture8.png" width = "1024"/>
    </p>
    <p align="center">
    <img src="./Picture9.png" width = "1024"/>
    </p>
3. In this question, we will understand how to monitor the status of a running process using the <code>top</code> command. Compile the program [cpu.c](cpu.c) given to you and execute it in the bash or any other shell of your choice as follows.
    ```console
    gcc --version
    # If gcc is not installed then run :- sudo apt-get install gcc
    gcc cpu.c -o cpu
    ./cpu
    ```
    This program runs in an infinite loop without terminating. Now open another terminal, run the <code>top</code> command and answer the following questions about the cpu process.
    <p align="center">
    <img src="./Picture10.png" width = "1024"/>
    </p>
    - What is the PID of the process running the cpu command?
    <p> PID = 23302 </p>
    - How much CPU and memory does this process consume?
    <p> CPU= 100.0% MEM = 0.0% </p>
    - What is the current state of the process? For example, is it running or in a blocked state or a zombie state?
    <p> The current state of the process is R - Running </p>
