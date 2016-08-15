#!/usr/bin/python
__author__ = 'nixCraft'
import sys
from subprocess import call

adbDevice = None

def callADBShell(arguments):
	callArguments = ["adb"] + (["shell"] if adbDevice == None else [adbDevice, "shell"])
	callArguments += arguments
	if len(arguments) == 3:
		print (" ... sending %s:%s:'%s'" % (arguments[0], arguments[1], arguments[2]))
	call(callArguments)

 
numberOfArguments = len(sys.argv)

indexOfFirstAdbArgument = 1


if numberOfArguments > 1:
	firstArgument = str(sys.argv[1])
	if firstArgument == "-d" or firstArgument == "-e":
		adbDevice = firstArgument
		indexOfFirstAdbArgument = 2

for i in xrange(indexOfFirstAdbArgument, numberOfArguments):
	callADBShell(["input", "text", str(sys.argv[i])])
	if i < numberOfArguments-1 and numberOfArguments > 2: 
		callADBShell(["input", "keyevent", "66"])
	
	