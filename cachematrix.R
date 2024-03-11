## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


#######################################

import subprocess
import os

# without changing the location 

# subprocess.run("ls", shell = True)
# #output: 
# Applications    Downloads       Music           ReiBoot         folder1
# Desktop         Library         Pictures        Sites           isus
# Documents       Movies          Public          Wine Files      reiboot-mac.dmg





# Now going to the location where the file is stored using o.s. module:
os.chdir('/Users/admin/Desktop/Shafer_Python_Classes/subprocess module/')
# subprocess.run("ls", shell = True)

## output: any_text.txt    output.txt      sp-demo.py      test.txt 


# To provide more information using aditional arguments:

# subprocess.run("ls -la", shell = True)
##output:
# total 32
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  1255 Mar 10 16:47 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt


# If you do not want to use the shell argument you can pass the entire command as a list like this:

# subprocess.run(['ls', '-la'])
##output:

# total 32
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  1800 Mar 10 16:55 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt

# Now lets see the process of capturing the standard output into a variable:

# p1 = subprocess.run(['ls', '-la'])

##output:

# total 32
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  1800 Mar 10 16:55 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt

# p1 = subprocess.run(['ls', '-la'])
# print(p1)

# total 32
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  2799 Mar 10 17:03 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt

# CompletedProcess(args=['ls', '-la'], returncode=0)

# Now we have this CompletedProcess object so we can do things like this:

# p1 = subprocess.run(['ls', '-la'])
# print(p1.args)
##output:
# ['ls', '-la']

# We can check if there are any errors, if returns 0 it means no errors

# p1 = subprocess.run(['ls', '-la'])
# print(p1.returncode)
##output:
#0

# We can also grab the standart out in bytes to start capturing it with this printing function:
# p1 = subprocess.run(['ls', '-la'])

# print(p1.stdout)
###output:
# None



# If we run it without the print statement: so subprocess is no more printing on the console

p1 = subprocess.run(['ls', '-la'], capture_output= True)
##output: NO output



# Now we pass this argument to capture outputand shows it in bytes:

# p1 = subprocess.run(['ls', '-la'], capture_output= True)
# print(p1.stdout)
##output:

# b'total 32\ndrwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .\ndrwxr-xr-x  7 admin  staff   224 
# Mar  6 19:43 ..\n-rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt\n-rw-r--r--  
# 1 admin  staff   273 Mar  8 20:06 output.txt\n-rw-r--r--  1 admin  staff    52 Mar 10 16:33 
# pipipip\n-rw-r--r--  1 admin  staff  3880 Mar 10 17:20 sp-demo.py\n-rw-r--r--  1 admin  staff  
# 33 Mar  8 20:25 test.txt\n'

# To conver this to a string there are two choices:
# 1. decode:
# p1 = subprocess.run(['ls', '-la'], capture_output= True)
# print(p1.stdout.decode())

##output:
# total 40
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  4645 Mar 10 17:32 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt

# 2. passing an argument saying we want text instead

# p1 = subprocess.run(['ls', '-la'], capture_output= True, text=True)
# print(p1.stdout)

##output:
# total 40
# drwxr-xr-x  7 admin  staff   224 Mar 10 16:32 .
# drwxr-xr-x  7 admin  staff   224 Mar  6 19:43 ..
# -rw-r--r--  1 admin  staff     0 Mar  8 19:29 any_text.txt
# -rw-r--r--  1 admin  staff   273 Mar  8 20:06 output.txt
# -rw-r--r--  1 admin  staff    52 Mar 10 16:33 pipipip
# -rw-r--r--  1 admin  staff  5205 Mar 10 17:37 sp-demo.py
# -rw-r--r--  1 admin  staff    33 Mar  8 20:25 test.txt

# okey, now redirecting standard uotputs and errors to a pipe because this is actually what is setting capture output equal to

p1 = subprocess.run(['ls', '-la'], stdout=subprocess.PIPE True, text=True)
print(p1.stdout)


##output:


























# subprocess.run("ls", shell = True)



# p1 = subprocess.run('cat test.txt | grep -n with', capture_output= True, text= True, shell = True)


# print(p1.stdout)
# print(os.getcwd()) 

# p2 = subprocess.run(['grep', '-n', 'with'], capture_output= True, text= True, input= p1.stdout)


# print (p2.stdout)







# # subprocess.call('cd', shell=True, cwd= ' /Users/admin/Desktop/Shafer_Python_Classes/subprocess module/sp-demo.py')

# subprocess.call('ls', shell=True, cwd=' /Users/admin/Desktop/Shafer_Python_Classes/subprocess module/sp-demo.py')
