#!py

def run():
    """
    automatically add all the keys in the pillar for the default user
    """
    config = {}
    for name, key in __pillar__['keys'].iteritems():
        config[key] = {
            'ssh_auth': [
                'present',
                {'user': __pillar__['username']},
                {'mode': 600},
                {
                    'require': [{'user': __pillar__['username']}]
                },
            ]
        }
    return config
