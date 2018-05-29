# trickleeffect
Randomly display each letter from input text line by line


Display each input line of data by repeatedly filling in one more random
letter.  Best piped through a slow (or simulated'ly slow) pipe.  Example

    $ python3 trickleeffect.py < example.txt | pv -qL 9600
