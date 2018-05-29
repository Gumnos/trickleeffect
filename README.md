# trickleeffect
Randomly display each letter from input text line by line


Display each input line of data by repeatedly filling in one more random
letter.  Best piped through a slow (or simulated'ly slow) pipe.  Example

    $ python3 trickleeffect.py < example.txt | pv -qL 9600

Originally
[inspired by this tweet](https://twitter.com/freebsdfrau/status/1001545943466983424) by [@freebsdfrau](https://twitter.com/freebsdfrau).
