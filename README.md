INTRODUCTION
==================

The purpose of this assignment is to become more familiar with the concepts of process control and signaling. This will be done by writing a simple Unix shell program that supports job control.


LOGISTICS
==================

eval: Main routine that parses and interprets the command line.

builtin_cmd: Recognizes and interprets the built-in commands (quit, fg, bg, and jobs).

do_bgfg: Implements the bg and fg built-in commands.

waitfg: Waits for a foreground job to complete.

sigchld_handler: Catches SIGCHILD signals.

sigint_handler: Catches SIGINT (ctrl-c) signals.

sigstp_handler: Catches SIGTSTP (ctrl-z) signals.


THE TSH SPECIFICATION
=======================

The prompt should be the string "tsh>"
The shell should support the above built-in commands.
Tsh shell should reap all of its zombie children. If any job terminates because it receives a signal that it didn't catch, then tsh should recognize this event and print a message with the job's PID and a description of the offending signal.
Each job should be identified by either a process ID (PID), or a job ID (JID), which is a positive integer assigned by tsh.
