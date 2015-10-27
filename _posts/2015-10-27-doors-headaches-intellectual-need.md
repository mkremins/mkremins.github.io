---
title: Locked doors, headaches, and intellectual need
permalink: /blog/doors-headaches-intellectual-need
---

You know those things that, once you learn about them for the first time, you start seeing them absolutely *everywhere*?
Recently, that's been my experience with *problem-solution ordering issues*. They keep cropping up: not just in the context of game design, where I first encountered them, but also in such apparently unrelated fields as math education and functional programming.

Despite this, however, I've never seen problem-solution ordering issues explicitly discussed in any of the online communities I participate in. So I'm going to try to define what they are; trace them through the different fields in which I've encountered them; and hopefully, in the process, demonstrate how a working awareness of these issues can help you avoid certain common pitfalls in teaching and communicating new ideas.

### Game design

I was first introduced to the idea of problem-solution ordering issues by [Richard Lemarchand](https://twitter.com/rich_lem), one of my game design professors. The idea stuck with me, mostly because it provided a satisfying explanation for a certain confusing pattern of player behavior that I'd witnessed many times in the past.

Here's the pattern. A new player jumps into your game and starts bouncing around your carefully crafted tutorial level. The level funnels them to the key, which they collect, and then on to the corresponding locked door, which they successfully open. Then, somewhere down the road, they encounter a second locked door... and are completely stumped. They've solved this problem once before – why are they having such a hard time solving it again?

What we have here is a problem-solution ordering issue. Because the player got the key in the first level *before* encountering the locked door, they never really formed an understanding of the causal link between "get key" and "open door". They got the key, and then some other stuff happened, and then they reached the door, and were able to open it; but "acquiring the key" and "opening the door" were stored as two separate, disconnected events in the player's mind.

If the player had encountered the locked door *first*, tried to open it, been unable to, and *then* found the key and used it to open the door, the causal link would be unmistakable. You use the key to open the locked door, because you can't open the locked door without the key.

This problem becomes a lot more obvious when you don't call the key a key, or when the door doesn't look like a locked door. The "key/door" metaphor is widely understood and frequently used in video games, so many players will assume that you use a key to open a locked door even if your own game doesn't do a great job of teaching them this fact. But if the "key" is really a thermal detonator and the "door" is really a power generator, a *lot* of players are going to wind up trying to destroy the second generator they encounter by whacking it ineffectually with a sword.

### Math education

I've [drawn parallels](/blog/why-affording-play) between game design and education before, but it still took me a while to realize that problem-solution ordering issues crop up just as often in the classroom as they do in games.

Remember how, in high school math class, a lot of the work you were doing felt *really, really pointless*? (Even if you never felt that way, I can all but guarantee that at least a few of your former classmates did.) We often think of this feeling of pointlessness as an inevitable byproduct of math education. But what if, instead, it's partly a consequence of problem-solution ordering issues in the way we currently teach math?

Consider Dan Meyer's question for math educators: [if math is the aspirin, then how do you create the headache?](http://blog.mrmeyer.com/2015/if-math-is-the-aspirin-then-how-do-you-create-the-headache/)

> Think of yourself as someone who sells aspirin. And realize that the best customer for your aspirin is someone who is in pain. Not a lot of pain. Not a migraine. Just a little.
>
> One of the worst things you can do is force people who don’t feel pain to take your aspirin. They may oblige you if you have some particular kind of authority in their lives but that aspirin will feel pointless. It’ll undermine their respect for medicine in general.
>
> Math shouldn’t feel pointless. Math isn’t pointless. It may not have a point in job [y] or [z] but math has a point in math. We invented new math to resolve the limitations of old math. My challenge to all of us here is, before you offer students the new, more powerful math, put them in a place to experience the limitations of the older, less powerful math.

In other words: if you introduce the solution (in this case, a new kind of math) before introducing the kind of problems that it's meant to solve, the solution is likely to come across as pointless and arbitrary. But if you first let students try to tackle these problems with the math they already understand, they're likely to come away with a kind of intellectual "headache" – and, therefore, to better understand the purpose of the "aspirin" you're trying to sell.

Which brings us to...

### Functional programming

In functional programming, there's a concept called the *monad*. Monads are notoriously abstract, and newcomers to functional programming often get tripped up trying to understand them.

The thing is, monads aren't actually all that complicated. In fact, most of the experienced functional programmers I've met consider them downright simple. It's just that newcomers often have a really hard time trying to figure out what exactly monads even *are*.

A lot of intermediate-to-advanced functional programmers have taken it upon themselves to write *monad tutorials*: blog posts and other explanations intended to demystify monads once and for all. But for the most part, these tutorials never seem to work. Experts who read them go on thinking monads are simple, and beginners who read them remain confused. Why is that?

I think a problem-solution ordering issue is to blame.

Monads are a solution to a specific problem: the problem of repetitive code. If you write enough code in a functional programming language, you start to notice that you're writing a lot of suspiciously similar code to solve a bunch of superficially different problems. Wouldn't it be nice if you could just write this code once and then reuse it, instead of rewriting it slightly differently every time? I'm omitting a lot of detail here, but this is effectively what monads allow you to do.

By definition, the chief difference between experienced and inexperienced functional programmers is that experienced functional programmers have written tons of code in functional languages. They've all encountered repetition and sought solutions to it. In other words, they've felt the headache for which monads are the aspirin.

Beginners, on the other hand, haven't written nearly as much functional code. They might not have noticed any recurring patterns yet; if they have, the repetition doesn't yet bother them. The headache just isn't there.

This is why it's so hard to explain monads to beginners, especially with canned tutorials that try to explain what monads *are* without spending too much time on what they're *for*. Monads are the solution to a problem that beginners haven't yet experienced for themselves; and, as a result, they feel pointless, like something out of high-school math.

Remember: *One of the worst things you can do is force people who don’t feel pain to take your aspirin.* Likewise, I suspect that trying to "teach monads" to novice functional programmers who don't yet understand the need for monads is likely to do [more harm than good](https://byorgey.wordpress.com/2009/01/12/abstraction-intuition-and-the-monad-tutorial-fallacy/), creating further unnecessary confusion and perpetuating the myth that monads are intrinsically hard to understand.

### Final thoughts

Strong problem-solution ordering is one of the defining hallmarks of the effective [explorable explanation](http://explorableexplanations.com/). Through interactivity, a well-designed explorable immediately invites the reader to play with the initial arrangement of elements, and thereby to discover potential problems on their own. First-hand experience of a problem induces *intellectual need* (or, if you prefer, a "headache") and sets the stage for the introduction of the solution later on.

Speaking of intellectual need: if you're interested in learning more about the educational theory underpinning this post, I strongly suggest checking out this [remarkably readable paper](http://math.ucsd.edu/~jrabin/publications/ProblemFreeActivity.pdf) on intellectual need in the math classroom, which offers both a concrete definition of "intellectual need" and a broad overview of the idea of *necessity* in the context of education.

And finally, the ultimate takeaway: if you want to craft memorable, relevant-seeming lessons, introduce your locked doors before your keys; your headaches before your aspirin; and your specific motivating problems before your wordy metaphorical generalizations.

(OK, maybe on that last one I should take a bit of my own advice.)
