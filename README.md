# short-domain-name-finder
Search for the shortest available domain names

## What? Why?
I wanted to find out what's the shortest .fi domain name I could get,
so I made this. Also I wanted to get a little practice building a
command line Ruby (not Rails) app.

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
   * Includes common characters (https://www.cs.tut.fi/~jkorpela/kielikello/kirjtil.html).
   * Includes two of the same characters
   * Includes f or i (for similiarity with .fi). One point for each.

## Missing features
* Support for ä, ö, å and whatever special characters are allowed
* Specify character(s) that have to be included
* Silent mode and verbose mode
* Tests?
