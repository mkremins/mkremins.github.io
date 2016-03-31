---
title: Sculpting possibility space
---

One of the best and most unexpectedly compelling things I read last month was Jason Brennan's post on the value of [stating the obvious](http://nearthespeedoflight.com/article/2016_03_18_stating_the_obvious). So, in the spirit of stating the obvious, I'm going to try to describe a very simple shift in perspective that has nevertheless had a major impact on the way I think about programming.

The conventional view of programming is *additive*: you start with an empty program that doesn't do anything, sort of like a painter's blank canvas, and gradually build it up into something useful by adding capabilities. This attitude is reflected in the language we use to describe programming: we "write code", "make apps", and "build software", using verbs that capture the sense of creating something from nothing to express our physical intuitions of what it feels like to program. These are the [metaphors we live by](https://en.wikipedia.org/wiki/Conceptual_metaphor).

But this additive perspective, pervasive though it may be, is not the only way of looking at programming. Personally, I often find it valuable to think of programming as a *subtractive* activity. Less like painting a picture, more like sculpting stone: you start with a lump of material and gradually carve pieces away, eventually producing something strictly smaller than the lump you started with.

And the material being sculpted? *Possibility space*: the range of things that your program might possibly do. To develop a program is to take a general-purpose, Turing-complete system – a programming language, a computer – and gradually exclude most of its capabilities in order to highlight a few specific ones that your users might find interesting. 

Viewed through this lens, programming isn't about adding capabilities to a program until it does what you want. In fact, almost the exact opposite is true: programming is about gradually whittling away at the entire vast possibility space of general-purpose computation (roughly speaking, "anything a computer can do") until your program doesn't do anything you *don't* want.

Why exclude so many possibilities? Because the human brain is limited. You can only hold a certain amount of information in your head at once, and the possibility space of general-purpose computation is absolutely huge – way too huge to fit completely in *anyone's* brain. Unless you find ways to narrow down this possibility space, you'll forever be adrift in a sea of complexity.

This realization played a critical role in helping me understand the value of functional programming. When functional programming advocates say they're trying to make it easier to "reason about" code, they're really talking about reducing the size of the possibility space that you have to fit in your head when attempting to understand said code. Both "fancy" type systems and immutable data structures are tools for *excluding possibilities* – such as "the possibility that this function will alter the arguments I pass in", or "the possibility that this code will mess with the filesystem when I run it" – in order to cut off as much of the possibility space as possible.

This is also one of the conceptual underpinnings of the [LangSec](http://langsec.org/) movement, whose proponents suggest (among other things) that it's easier to develop secure software when you use the least computationally powerful techniques that will suffice for processing input. In other words: the smaller the initial possibility space from which your program is hewn, the less likely you are to overlook a potentially dangerous corner of this space.

But the most profound implication of the subtractive viewpoint, in my opinion, is that programmers need better tools for *exploring possibility spaces*. [Generative testing](http://blog.jessitron.com/2013/04/property-based-testing-what-is-it.html), which can be used to shed a bit of light on the darker corners of a program's possibility space, represents a step in the right direction, but I'm even more intrigued by things like Michael Cook's [Danesh](http://www.gamesbyangelina.org/2016/02/introducing-danesh-part-1/): a tool for visually analyzing the "expressive range" of a procedural generator, which begins to hint at how profoundly different our development and debugging workflows might look if we were able to visualize possibility spaces directly.

I'll almost certainly have more to say about this subject in the future. For now, though, I'll wrap this post up by reaffirming the value of stating the obvious. As Jason Brennan writes:

> I’m not writing groundbreaking stuff, but I am trying to make some connections I (and you) might not have otherwise made. It might sound obvious when you read it, but my hope is by writing it down, by giving it a *name*, whatever obvious thing I write about becomes just a little bit more tangible.
>
> <footer>Jason Brennan, <a href="http://nearthespeedoflight.com/article/2016_03_18_stating_the_obvious">“Stating the Obvious”</a></footer>

I'd been toying with a vague notion that programming could be thought of in terms of sculpture for months, but it was only when I ran into [this post's](http://galaxykate0.tumblr.com/post/139774965871/so-you-want-to-build-a-generator) offhand parenthetical definition of the term "possibility space" that everything finally clicked. Hopefully, my writeup of this obvious-in-hindsight realization will be just enough to help someone else arrive at an "obvious" realization of their own.
