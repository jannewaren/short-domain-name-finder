# short-domain-name-finder
Search for the shortest available domain names

## What? Why?
I wanted to find out what's the shortest and nicest .fi domain name I could get,
so I made this. You know, like, for a url-shortening service or something.

Also I wanted to get a little practice building a command line Ruby (not Rails) app.

## Usage
1. clone
2. ruby run.rb
3. PROFIT!

## Requirements
 * ruby (tested on 2.2.0)
 * whois

## Features
 * Perform a whois check on all domain names which are 2-4 characters long
   * But do not overload whois services (limit results to 20 or something)
 * Support for other TLDs than .fi
 * Ordering the results, give a domain name extra points for
   * Being short (duh!).
   * Includes two of the same characters

## Missing features
* Support for ä, ö, å and whatever special characters are allowed
* Specify character(s) that have to be included
* Silent mode and verbose mode
* Tests?
* Better score if includes common characters (https://www.cs.tut.fi/~jkorpela/kielikello/kirjtil.html).

## Results:
Example output looks like this:
➜  short-domain-name-finder git:(master) ✗ ruby run.rb
Results:
Free domains: 50
Taken domains: 7719
Top free:
35.fi
a6.fi
a7.fi
36.fi
i5.fi
i6.fi
i7.fi
i8.fi
i9.fi
t7.fi
