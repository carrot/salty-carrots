#!py
from crypt import crypt
import os

def run():
    password = 'core2062'
    return {'password_hash': crypt(password, '$6$%s$' % os.urandom(16).encode('base_64'))}
