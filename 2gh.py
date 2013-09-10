#!/usr/bin/env python

import os, sys
try:
    import git
except ImportError:
    print 'You need the git python library. Please run `pip install GitPython`.'

cwd = os.getcwd()

try:
    repo = git.repo.base.Repo()
except:
    print 'This is not a git repository'
    sys.exit(os.EX_NOINPUT)
    
path        =   '/tree/%s/' % repo.active_branch
base_dir    =   repo.working_tree_dir
path        =   path + cwd.replace(base_dir, '').lstrip('/')
remote_url  =   None

for remote in repo.remotes:
    if remote.config_reader.get('url').find('github.com') > -1:
        remote_url  =   remote.config_reader.get('url')
        if remote_url.find('git@') == 0:
            remote_url  =   remote_url[4:]
        if remote_url.find('.git') > -1:
            remote_url  =   remote_url[0:-4]
        remote_url  =   remote_url.replace(':', '/').rstrip('/')
        remote_url  =   u'https://%s%s' % (remote_url,path)
        break
        
if remote_url:
    os.popen('open %s' % remote_url)
else:
    print 'This repo does not appear to have a github remote'
sys.exit()
