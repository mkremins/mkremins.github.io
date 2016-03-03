---
title: Unix is not an acceptable Unix
---

The Unix command line is full of surprises. For instance: did you know that the OS X version of the `ls` tool, most frequently used to get a list of the files in the current working directory, recognizes no fewer than [38 different flags](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/ls.1.html)?

I didn't, so I [tweeted](https://twitter.com/maxkreminski/status/585843964260941824) about it. I got a couple of replies, [one of which](https://twitter.com/rtraschke/status/585933203183165441) got me wondering: was Unix itself really to blame?

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/msimoni">@msimoni</a> <a href="https://twitter.com/maxkreminski">@maxkreminski</a> Unfortunately, the lineage is _not_ Unix -&gt; Linux. It is Unix -&gt; Plan 9. Linux doesn&#39;t follow Unix philosophy :-(</p>&mdash; Robby Raschke (@rtraschke) <a href="https://twitter.com/rtraschke/status/585933203183165441">April 8, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

As far as I know, neither Linux nor OS X was designed with close adherence to the [Unix philosophy](http://en.wikipedia.org/wiki/Unix_philosophy) in mind. It'd be disingenuous of me to base a criticism of "Unix" exclusively on those derivatives of Unix that are still with us today.

What follows, then, is my attempt to show that many of the problems with the command-line interfaces provided by modern descendants of Unix go all the way to the roots of Unix itself. In particular, I'm going to try to explain my skepticism at the idea that the Unix command-line environment could *ever* have supported an ecosystem of programs that each did one thing well.

But I'm getting a little ahead of myself. Before I start into any of that, let's take a closer look at `ls` and see if we can figure out what exactly it's doing wrong.

### Many things poorly

Different versions of `ls` understand different sets of flags, but these flags can in general be classified into a few broad categories. `ls` users make use of flags to:

* **Specify the output format**. `-C` arranges entries in a neat grid; `-m` prints a comma-separated "stream" of entries; `-1` prints each entry on its own line; `-q` replaces nonprintable characters in file names with question marks.
* **Display extra information about each file**. `-F` adds trailing sigil characters to the names of directories (`/`), executables (`*`), symlinks (`@`), and files of other "special" types; `-s` prints the size of each file alongside its name.
* **Reorder the list of files**. `-r` reverses the default order; `-t` orders files by how recently they've been modified.
* **Include and exclude certain files**. `-a` includes files that are hidden by default; `-R` recursively lists files in subdirectories of the working directory.

Disregarding the first category for now, there's something interesting going on with the other three. Functional programmers in particular might find something about them strangely familiar.

That's right – each of these three categories corresponds roughly to a single generic higher-order function that operates on sequences!

* Flags that *display extra information about each file* can be expressed in terms of `map`, which applies a given transformation to each item in a sequence independently of the others.
* Flags that *reorder the list of files* can be expressed in terms of `sort`, which uses a given comparator to compare items pairwise and reorder them accordingly.
* Flags that *include and exclude certain files* can be expressed in terms of `filter`, which tests each item against a given predicate and rejects those that are found unworthy.

`ls` seems bloated because it *is* bloated. A handful of higher-order functions could subsume the vast majority of the functionality that's currently baked into `ls` itself in the form of flags.

### What went wrong?

By no means is it novel to assert that each program should constitute a self-contained unit of functionality. For decades, Unix proponents have been extolling the virtues of pipelines: "programs" created on the fly by gluing small, composable [filters](http://en.wikipedia.org/wiki/Filter_(software)#Unix) together end-to-end. How, then, is it possible to explain the evolution of such a conceptually simple tool as `ls` towards ever-greater complexity?

The extreme terseness of the Unix command line hints at one possible explanation. When Unix was invented, 80 characters was about as wide as you could expect a screen to go, and using a computer was synonymous with sitting at a terminal and typing out commands. In such an environment, it made sense to trade legibility and composability for the ability to fit more information into as few characters as possible.

During this era, the developers of heavily used utilities were strongly incentivized to build in shortcuts wherever they could. `ls` is called `ls` for the very same reason that its flags are cryptic single-character runes rather than meaningful words or, god forbid, entire phrases: it was developed by and for a small group of highly specialized experts in an environment where every keystroke, every character displayed on the screen, came at a real and meaningful cost.

Likewise, the flags themselves are shortcuts for common real-world use cases. Why waste time adding a filtering step to the pipeline to drop the hidden files when 90% of the time no one wants to see the hidden files anyway? Why display all the available information about each file when 90% of the time the user only cares about filenames?

This mindset – that keypresses are expensive, and that there should be a shortcut for everything – is responsible for many of the problems with `ls`, and with the Unix command-line environment as a whole.

### The "universal interface"

But [why not just](https://www.google.com/search?q=%22why%20not%20just%22) write a simpler alternative to `ls` – a function that takes an optional directory, or the working directory by default, and returns a list of the files inside, disregarding flags entirely? Unix is, after all, nothing if not hackable: if you don't like `ls`, you're free to replace it.

I'll answer that question with a hypothetical. Imagine, if you will, a programming language in which every function takes exactly one argument (a string) and returns exactly one result (another string).

Oh, look at that – it exists, and it's called the shell.

Unix permits programs to communicate with one another, and with the user, exclusively through character streams. You can’t  write a function that returns a list of files because the shell doesn’t know what a "list" is, doesn’t know what "files" are, and couldn’t tell you the difference between a "function" and a "program" if its life depended on it. Programs don’t "take arguments" and "return values", they read characters from `stdin` and print characters to `stdout`!

> Write programs to handle text streams, because that is a universal interface.
>
> <footer>Doug McIlroy, <a href="http://harmful.cat-v.org/cat-v/unix_prog_design.pdf">“Program Design in the UNIX Environment”</a></footer>

The original designers of Unix viewed the "simplicity" of text streams as an advantage. Consequently, they declined to impose any structure on the data that was to pass between programs. This decision, intended to banish inessential complexity, instead managed only to push essential complexity further downstream.

Remember that first category of `ls` flags, the flags we couldn't explain away as shortcuts for generic sequence transformations? Turns out they're just shortcuts for informally encoding notional *lists of files* as strings that certain other programs (or, in some cases, human beings) know how to parse.

The system fails to provide the abstractions its users need. Users respond by [reinventing them](http://en.wikipedia.org/wiki/Greenspun%27s_tenth_rule), poorly and inconsistently and in all the wrong places. It's a distressingly common pattern.

### Not an acceptable Unix

Awareness of the history of computing, and of the constraints under which our current mental models were developed, bestows a kind of superpower: the ability to notice when changing circumstances have rendered once-necessary tradeoffs nonsensical or obsolete.

Many of the usability issues raised by Don Norman in his 1981 [criticism of Unix](http://www.ceri.memphis.edu/people/smalley/ESCI7205F2009/misc_files/The_truth_about_Unix_cleaned.pdf) have gone largely unaddressed for three and a half decades. Granted, we've developed graphical user interfaces that keep "ordinary users" away from the command line, but we still expect "serious developers" to drop down into a demonstrably inhumane environment to get anything meaningful done.

Rather than re-evaluating the Unix command line with an eye towards improving its usability under the greatly relaxed technological constraints of modern hardware, we've written [terminal emulators](http://www.secretgeometry.com/apps/cathode/) that faithfully reproduce the constraints of the mid-1970s. We demand [`sh` compatibility](http://unix.stackexchange.com/questions/145522/what-does-it-mean-to-be-sh-compatible) from new alternative shells and take it for granted that the [hierarchical filesystem](https://www.usenix.org/legacy/event/hotos09/tech/full_papers/seltzer/seltzer.pdf) is the optimal way to organize information.

What are the odds that we somehow stumbled upon the best possible interface for interacting with the computer 40 years ago? What are the odds, in other words, that what we're doing still makes sense today?

Even the earliest version of Unix was ultimately only a particular, flawed implementation of the Unix philosophy. If we want to encourage more widespread acceptance of the *philosophy*, we should not try to defend the *implementation* by downplaying its flaws. Instead, we should confront these flaws head-on and work to build systems that address them while also adhering to the spirit – if not the letter – of the principles on which Unix was built.
