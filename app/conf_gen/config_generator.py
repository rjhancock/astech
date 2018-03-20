#!/usr/bin/python3
'''
astech.conf generator app for Astech
'''

# we are dumping dictiorany to a file
import pickle

# we will hash the password
import hashlib

# dumb initial configutarion 
conf = { 'name': '', \
         'version': '', \
         'port': 1111 }
crede = { 'user': '', \
          'pass': '' }

# now we are making real one
print('Type name: ')
name = input()

print('Type version: ')
version = input()

print('Type port: ')
port = input()

print('Type username: ')
user = input()

print('Type password: ')
password = input()

# we have all the data we need
print('--- saving configuration ---')

conf['name'] = name
conf['version'] = version
conf['port'] = int(port)
crede['user'] = user
crede['pass'] = hashlib.sha512(password.encode()).hexdigest()

# dumping name, version and port to config file
confile = open('astech.conf', 'w+b')
pickle.dump(conf, confile, protocol=0)
confile.close()

# dumping user and password to credentials file
credefile = open('astech.crede', 'w+b')
pickle.dump(crede, credefile, protocol=0)
confile.close()

# ok
print('--- config is ready. ---')

