# ensure root account is locked
root:
  user.present:
    - password: !

{{ pillar['username'] }}:
  user.present:
    - home: /home/{{ pillar['username'] }}
    - shell: /bin/bash
    - password: {{ pillar['password_hash'] }}
    - groups:
      - sudo
      - www-data

/home/{{ pillar['username'] }}/.bashrc:
  file.managed:
    - source: salt://users/.bashrc
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}
    - require:
      - user: {{ pillar['username'] }}
