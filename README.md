# Unix-Shell-programming
Simple Tasked using shell programming

Task 1. 
Write a script to find if a given date actually exists on the calendar
In this task, you will write a simple shell script that can determine if the input date is valid or not.
The main challenge is to take the leap years into account. You may use the following logica:
1. If the year yis divisible by 4, go to step 2. Otherwise, go to step 5.
2. If the year yis divisible by 100, go to step 3. Otherwise, go to step 4.
3. If the year is divisible by 400, go to step 4. Otherwise, go to step 5.
4. The year yis a leap year.
5. The year yis not a leap year.
Apart from some obvious checks, you will also need to check whether the day value in the input date
exceeds the number of days in the input month. If it does, then the input date does not exist on the
calendar.


Task 2.
Write a script to convert a given number to bytes, kilobytes, megabytes, and gigabytes
In this task, you will write a simple shell script that can print a given input in bytes (B), kilobytes
(KB), megabytes (MB), and gigabytes (GB). You must use the utility bc in your shell script to do
the calculations. The formulae are as follows:
1 KB = 1024 B
1 MB = 1024 KB
1 GB = 1024 MB
The output of your script should look like this:
$ ./convertsize.sh 4096B
Bytes = 4096
Kilobytes = 4.0000
Megabytes = .0039
Gigabytes = 0
$ ./convertsize.sh 4096KB
Bytes = 4194304
Kilobytes = 4096
Megabytes = 4.00
Gigabytes = .0039

Task 3.
Write a script to create a compressed version of a specified directory
In this task, you will take the role of a system administrator who wants to backup specific directories.
You will write a simple shell script that can create a compressed tar archive of any directory that is
given as input. In your script, you may of course use the tar command which is capable of archiving
a directory. However, your script must fulfill the following requirements:
1. Your script should accept exactly one argument, and if executed without any argument, it
should display a message.
2. Your script should check whether the directory given as the argument exists or not.
3. Your script should ensure that the user is in the parent directory of directory to be compressed.
4. Your script should save the archive file in the parent directory of the compressed directory.
5. Your script should verify whether the user who invoked the script has write permission on
the current directory. Otherwise, it should print the following message: "cannot write the
compressed file to the current directory".
6. Your script should warn users before archiving a large directory. The warning message should
be as follows: "Warning: the directory is 512 MB. Proceed? [y/n]"
Hint: Use the du command and awk to get the size of the directory to be compressed and
compare it with 512 MB.
