Introduction
==================

The purpose of this assignment is to become more familiar with the concepts of process control and signaling. This will be done by writing a simple Unix shell program that supports job control.


Logistics
==================

(1) eval: Main routine that parses and interprets the command line.
(2) builtin_cmd: Recognizes and interprets the built-in commands (quit, fg, bg, and jobs).
(3) do_bgfg: Implements the bg and fg built-in commands.
(4) waitfg: Waits for a foreground job to complete.
(5) sigchld_handler: Catches SIGCHILD signals.
(6) sigint_handler: Catches SIGINT (ctrl-c) signals.
(7) sigstp_handler: Catches SIGTSTP (ctrl-z) signals.


The tsh Specifications
========================

(1) The prompt should be the string "tsh>"
(2) The shell should support the above built-in commands.
(3) Tsh shell should reap all of its zombie children. If any job terminates because it receives a signal that it didn't catch, then tsh should recognize this event and print a message with the job's PID and a description of the offending signal.
(4) Each job should be identified by either a process ID (PID), or a job ID (JID), which is a positive integer assigned by tsh.
