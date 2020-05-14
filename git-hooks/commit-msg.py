#!/usr/bin/env python

# Borrowed from: http://addamhardy.com/blog/2013/06/05/good-commit-messages-and-enforcing-them-with-git-hooks/
# With modifications by: Jon Roelofs <jonathan@codesourcery.com>

import sys, os
from subprocess import call
import readline

print os.environ.get('EDITOR')

if os.environ.get('EDITOR') != 'none':
  editor = os.environ['EDITOR']
else:
  editor = "vim"

message_file = sys.argv[1]

def check_format_rules(lineno, line):
    real_lineno = lineno + 1
    if lineno == 0:
        if len(line) > 50:
            return "#   Error: First line exceeds 50 characters:      ^" + ('~' * (len(line)-50-1)) + "\n"
    if lineno == 1:
        if line:
            return "#   Error: Second line ^ should be empty.\n"
    if not line.startswith('#'):
        if len(line) > 80:
            return "#   Error: No line should exceed 80 characters:                                 ^" + ('~' * (len(line)-80-1)) + "\n"
    return False

while True:
    commit_msg = list()
    new_msg = list()
    errors = False
    with open(message_file) as commit_fd:
        for lineno, line in enumerate(commit_fd):
            stripped_line = line.strip()
            commit_msg.append(line)
            new_msg.append(line)
            e = check_format_rules(lineno, stripped_line)
            if e:
                new_msg.append(e)
                errors = True
    if errors:
        with open(message_file, 'w') as commit_fd:
            for line in new_msg:
                commit_fd.write(line)

        re_edit = raw_input("Invalid commit message format.  Abort, Edit, or Ignore?. [a/e/i] ")
        while re_edit not in ('a', 'abort', 'e', 'edit', 'i', 'ignore'):
            re_edit = raw_input("Invalid choice '%s'.  Abort, Edit, or Ignore?. [a/e/i] " % (re_edit,))
        if re_edit.lower() in ('a', 'abort'):
            sys.exit(1)
        elif re_edit.lower() in ('i', 'ignore'):
            sys.exit(0)
        else:
            call('env %s %s' % (editor, message_file), shell=True)
            continue
    break