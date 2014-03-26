#!py
from crypt import crypt
from bcrypt import gensalt

def run():
    salt = gensalt()
    return {'password_hash': crypt('core2062', '\$6\$%s\$' % salt)}
