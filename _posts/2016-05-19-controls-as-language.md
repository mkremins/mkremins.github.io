---
title: Controls as language
---

A couple of weeks ago, my friend [Esteban](https://twitter.com/estebanthinks) said some stuff on Twitter that got me thinking (again) about the value of looking at a game's control scheme as a sort of language. [The whole series of tweets](https://storify.com/maxkreminski/controls-as-language) is worth a read, but [the concluding tweet](https://twitter.com/estebanthinks/status/728821263540457473) in particular effectively sums up a few key parts of the controls-as-language metaphor that I've been meaning to write about for a while now:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">You want less buttons because each button is a vocabulary word players have to learn, like it was a textbook</p>&mdash; esteban (@estebanthinks) <a href="https://twitter.com/estebanthinks/status/728821263540457473">May 7, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I really like this perspective, but I've never seen the logic behind it explicated in detail. So I figured I'd take this opportunity to collect and write up some of my thoughts on *controls as language*.

### Expressive flexibility

What makes a language a language?

All human languages seem to share a few things in common. One of these things is *grammar*: a set of rules that collectively define the structure of sentences in the language. Typically, words are grouped into distinct *parts of speech* such as "nouns" and "verbs", and the language's grammar describes where in a sentence you're allowed to use words belonging to each part of speech.

In the English language, the meaning of a sentence is built from the meanings of its parts. As an example, consider the sentence “Jack and Jill went up the hill”. You can swap out any one of the words in this sentence with another word from the same part of speech without changing the sentence's overall structure. For instance:

* Jack and Jill **flew** up the hill.
* Jack and Jill went up the **stairs**.
* **The elephant** went up the hill.

…and so on. This is possible because the meaning of each word is *orthogonal* to, i.e. independent of, the meanings of the other words. It's legal, grammatically speaking, to replace any noun (for example) with any other noun.

You can even make up entirely new words on the spot and use those instead!

* Jack and Jill **fleeped** up the hill.
* Jack and Jill went **dorf** the hill.

What do we know about the meaning of the word "dorf"? Surprisingly enough, the answer isn't "nothing", even though we've never encountered this word before. In this case, because of its place in the overall structure of the sentence, we can be fairly certain that "dorf" is a preposition – something akin to "up", "around", or "through".

English words are *generic*. Once you've learned the English verb "throw", you can apply that verb to any noun you want. "Throw" doesn't care what's being thrown; its meaning is orthogonal to the meaning of the noun to which it's applied! You can throw something up the hill, down the hill, or even dorf the hill. You can throw anything, anywhere.

Language, as I use the term here, is characterized by this kind of expressive flexibility: the kind that comes from having generic words, sorted into several orthogonal parts of speech.

### Axes of variation

Let's say we're making a videogame, and we want to add some variety to the gameplay by populating each level with randomly selected enemies. There are seven kinds of enemies that we can place: red monsters, orange monsters, green monsters, blue monsters, circle monsters, triangle monsters, and square monsters.

![Seven kinds of monsters](/img/enemytypes1.jpg)

This is a good amount of variety, right? With seven distinct monster types for us to draw from when populating each level, players who go back to replay levels they've already completed won't get bored quite so easily.

But we can do better. What if we separate these categories into two different groups – let's say colors and shapes? Now we've still got seven categories, but four of them (red, orange, green, blue) are colors, and three (circle, triangle, square) are shapes. What's more, every monster we generate will now have both a shape and a color. What does that look like?

![Three shapes, four colors](/img/enemytypes2.jpg)

We haven't added any new categories, yet the number of distinct enemy types available has nearly doubled! It's jumped from seven to twelve: one for each cell in the 3 × 4 grid of shapes and colors. This might not seem that dramatic at first, but consider: if we add to this grid only a single additional shape (let's say pentagons), the number of distinct enemy types will jump to 16, and if we add one more shape or color after that, we'll be all the way up to 20!

Such rapid expansion of the [possibility space](/blog/sculpting-possibility-space/) for monster selection is made possible by the orthogonality of color and shape. You can combine any color with any shape to yield a distinct enemy type; thus, the possibility space grows *multiplicatively*, rather than *additively*, with the introduction of each new shape or color. By redefining color and shape as independent *axes of variation*, we've extended our previously one-dimensional possibility space into the second dimension.

### Parts of speech

Game designers spend a lot of time talking about *verbs*: the things that games allow players to do. Many games map each verb to a single *input element*, be it a mouse button, controller thumbstick, or key on the keyboard. In a typical Mario game, for instance, the A button maps directly to the verb “jump”.

Sometimes, designers extend the linguistic metaphor of "verbs" even further by using the word “vocabulary” to talk about the player's repertoire of skills. But a vocabulary made of verbs alone is sharply limited in its expressiveness. Where are all the other parts of speech?

It's always surprised me that most games don't really have any equivalent to *adverbs*: discrete *ways of doing things*, such as "quietly" or "aggressively", that can be applied to any verb in order to modify its effects. Generic adverbs represent a whole new axis of variation. If you have a seven-button controller and map each button to a unique verb, then the player has seven different things they can do. But if you map four buttons to verbs and three to adverbs that can be used with any verb, you've now got twelve possibilities instead!

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Simple inputs can produce logical combined outputs, allowing for more complex controls without more buttons</p>&mdash; esteban (@estebanthinks) <a href="https://twitter.com/estebanthinks/status/728821017997496320">May 7, 2016</a></blockquote>

What's more, it's much easier to learn four generic verbs and three generic adverbs than twelve entirely separate verbs. [Transfer of learning](https://en.wikipedia.org/wiki/Transfer_of_learning) plays a major role here: if a player learns the adverb "quickly" in conjunction with the verb "walk", and then learns the verb "hit", they may be able to transfer their understanding of the generic adverb to the new verb and correctly intuit (without explicit instruction) that the combined phrase "hit quickly" may be used to make a rapid strike.

It's not just games that can benefit from grouping controls into orthogonal parts of speech. The Vim text editor makes use of an input language with distinct parts of speech rather than a conventional one-keyboard-shortcut-per-action editor control scheme, and is frequently lauded for its power and flexibility as a result.

> Arguably the most brilliant thing about vim is that as you use it you begin to think in it. vim is set up to function like a language, complete with nouns, verbs, and adverbs.
>
> <footer>Daniel Miessler, <a href="https://danielmiessler.com/study/vim/#language">“A vim Tutorial and Primer”</a></footer>

The Vim command `d2w` ("**d**elete **2** **w**ords") can be understood entirely in terms of the individual characters from which it's constructed. And anyone who knows `d2w` also understands the meaning of `d4w`, even if they've never previously encountered the latter command.

### Downsides and remedies

There are, of course, tradeoffs involved in making users learn a full-fledged input language. The larger and less familiar the language, the higher the barrier to entry for new users; there's a ton of people out there (myself included!) who would sort of like to learn Vim, but who don't want to put in all the time and energy that it would take to get from zero to barely adequate.

And even once you get that far, you still might not yet be getting enough out of the language to justify your initial investment. Eevee talks about this *late-beginner stage* a bit [here](https://eev.ee/blog/2016/05/06/learning-to-draw-learning-to-learn/):

> A very frustrating stage of learning a new (spoken) language is the late-beginner stage. You know the basic grammar and understand how the language is generally put together; you just don't know many *words*. Learning resources are starting to dry up — everything's always written for complete beginners — but you struggle to transition to learning from real native media, because you have to stop to look up every other word.
>
> If you stick with it, you'll eventually claw your way up to a kind of **critical mass**, where you know enough vocabulary that you can start to pick up the rest from context. You no longer need to spend ten minutes fishing through a dictionary just to understand what someone is talking about, and can instead focus on picking up nuance and idioms and more complex grammar. From there, you can accelerate.
>
> <footer>Eevee, <a href="https://eev.ee/blog/2016/05/06/learning-to-draw-learning-to-learn/">“Learning to draw, learning to learn”</a></footer>

Keeping these pain points in mind, what can we do as designers to help new users overcome the initial difficulty of learning a sophisticated input language?

**First**, we can begin by introducing new users to a limited subset of the language: a subset which may lack nuance, but which is *good enough* for basic tasks. Super Smash Bros. does this pretty well. All of the controls *can* be combined in a wide variety of different ways, but you only *need* to know a handful of basic moves to begin playing the game.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">But at the same time, those simple inputs ideally allow for basic play from only knowing one or two things to press</p>&mdash; esteban (@estebanthinks) <a href="https://twitter.com/estebanthinks/status/728818593794654208">May 7, 2016</a></blockquote>

And **second**, we can occasionally prompt users with new vocabulary items in a way that guides them toward a broader, more idiomatic understanding of the language as a whole. In my own (rather limited) experience, neither Vim nor SSB does a particularly great job of this: both of them mostly leave users to their own devices when it comes to discovering new "words".

They do both offer guided tutorials, but at the late-beginner stage, you'll find yourself getting less and less value out of sitting through more contrived lesson scenarios. To keep improving past this point, you have to start actually *using the language* and learning new words and idioms as they appear.

Instead of relying on tutorials, perhaps a game or tool could do more to help late-beginner users improve by observing their actions and keeping an eye out for certain inefficient patterns of behavior (such as using multiple general-purpose words to achieve the same effect as a single, more specialized word that hasn't been introduced yet). Then, when it recognized one of these patterns, it could introduce a handy new vocabulary word at the point of need.

This is easier said than done! But altogether, using techniques like these to mitigate the initial difficulty of learning a sophisticated input language might be a way to make such input languages accessible to wider audiences – and, in the process, to encourage the design of more expressive control schemes for games and tools alike.
