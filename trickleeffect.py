import random
import sys

for line in sys.stdin:
    line = line.rstrip("\n\r")
    try:
        newline = [' ' for c in line]
        indexes = list(range(len(newline)))
        random.shuffle(indexes)
        for i in indexes:
            newline[i] = line[i]
            sys.stdout.write('\r')
            sys.stdout.write(''.join(newline))
        sys.stdout.write('\n')
    except BrokenPipeError:
        break
