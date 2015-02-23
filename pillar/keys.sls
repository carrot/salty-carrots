#!py
from os import listdir
from os.path import dirname, basename, realpath, join

def run():
    """
    automatically add all the keys in ./keys for the default user
    """
    ssh_keys = {}
    for key_file in listdir(join(dirname(realpath(__file__)), 'keys')):
        file_name = basename(key_file)
        f = open(join(dirname(realpath(__file__)), 'keys', key_file), 'r')
        ssh_keys[file_name] = f.read().strip()

    return {'keys': ssh_keys}
