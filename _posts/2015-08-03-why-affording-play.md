---
title: Why “Affording Play”?
---

Why is this blog called "Affording Play"? What, for that matter, does the phrase "affording play" even *mean*?

This isn't exactly a "frequently asked question", but it *is* a question I've been asked a few times by a few different people, and a question I wanted to get around to answering eventually one way or the other. Now seems to be as good a time as any, so here we go.

The "affording" part, for starters, refers to the concept of *affordances*. In user interface design, an affordance is a feature of an interface that suggests or facilitates (i.e. *affords*) a certain kind of interaction. At the risk of oversimplification, a door handle affords pulling; a door plate affords pushing; a light switch affords flipping; and a knife affords grasping (of the handle part) and cutting (with the blade part).

A thing that affords play, then, is a thing that suggests playful uses; a thing that naturally guides its user towards a playful state of mind.

The "play" part is a bit more complicated. As a game design student with a particular interest in usability, I spend a lot of time pursuing ways to make interactions feel playful. At a surface level, it's tempting to write off the phrase "affording play" as a literal description of the work I do, which often involves the application of user interface design techniques to games.

But it's when you interpret this phrase more generally that a deeper level of meaning begins to emerge. If you're anything like me, it might initially strike you as a little odd that the longest and most widely read post on a game design student's blog is a [criticism of Unix](http://mkremins.github.io/blog/unix-not-acceptable-unix/) that doesn't even mention games. But if you take "affording play" as my goal for *complex human-authored systems in general* and not just games, this observation starts to make a bit more sense.

What does it mean to afford play outside of games? Let's take a look at two of my all-time favorite user interface idioms: the *undo* command, and *real-time suggestions* for things like the Google search bar.

The very existence of a reliable undo command is an open invitation to engage in playful experimentation. Wondering what that big red button does? Without undo, you've got to be cautious: pressing the button might well mess something up. But if you have undo, you can figure out what the button does by pressing it and seeing what happens. Even if it does mess something up, you have the tools you need to restore the previous state.

<blockquote class="twitter-tweet" data-conversation="none" lang="en"><p lang="en" dir="ltr">Remember, Undo is the king of interface idioms.&#10;&#10;It makes users more willing to explore and experiment.</p>&mdash; Jonathan Korman (@miniver) <a href="https://twitter.com/miniver/status/610868340442157056">June 16, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Real-time suggestions, meanwhile, afford play by tightening the feedback loop between action and reaction. Trying to find the source of a quote, but unsure of the quote's exact wording? Without real-time suggestions, you're forced to adopt a rigid multi-step process: formulate a query in your head; submit it; evaluate the results; and decide whether you need to repeat the process with a revised query. But if real-time suggestions are available, you can improve the query on the fly by *reacting to the suggestions* that come up as you type, enabling you to play around with the search and obtain better results with less cognitive effort.

To quote directly from the "Create by Reacting" section of Bret Victor's essay, [Learnable Programming](http://worrydream.com/LearnableProgramming/):

> I was recently watching an artist friend begin a painting, and I asked him what a particular shape on the canvas was going to be. He said that he wasn't sure yet; he was just "pushing paint around on the canvas", reacting to and getting inspired by the forms that emerged. Likewise, most musicians don't compose entire melodies in their head and then write them down; instead, they noodle around on a instrument for a while, playing with patterns and reacting to what they hear, adjusting and sculpting.
>
> An essential aspect of a painter's canvas and a musical instrument is the immediacy with which the artist gets *something there* to react to. A canvas or sketchbook serves as an "external imagination", where an artist can grow an idea from birth to maturity by continuously *reacting to what's in front of him*.
>
> <footer>Bret Victor, <a href="http://worrydream.com/LearnableProgramming/">“Learnable Programming”</a></footer>

In other words: humans become proficient at manipulating complex systems in part through reactive experimentation and play.

Consider what it's like to play Super Mario Bros. for the first time. Now consider what it's like to write, say, a shell script for the first time. In both scenarios, your challenge involves learning how to manipulate a wildly complex system in order to achieve a desired outcome. But so far, I've yet to meet anyone who had a harder time learning Super Mario Bros. than learning to program. Why is that?

An important part of the answer to this question can be found in Anna Anthropy's analysis of Super Mario Bros.'s first level. As [this analysis](http://auntiepixelante.com/?p=465) reveals, it's easy to learn SMB because SMB has been meticulously designed to be learnable through play:

> an unfortunate trend in contemporary games is to spell out every detail in a hand-holding “tutorial” session at the outset of a game – unfortunate because it shows both a great deal of contempt for the player’s intuition and a lack of confidence in the designer’s own design. but more than that, it’s a design failure because it tells the player the rules instead of allowing her to learn them.
>
> what if the first level of the game were laid out in such a way that the player could learn the rules simply by playing through it, without needing to be told them outright?
>
> <footer>Anna Anthropy, <a href="http://auntiepixelante.com/?p=465">“level design lesson: to the right, hold on tight”</a></footer>

Super Mario Bros. doesn't tell the player how to play. In fact, it never utters a single word. Instead, practically every aspect of its first level is aligned in *showing* the player how to play the game by giving them something to react to.

This throws the relative difficulty of learning to program into sharp relief. People don't learn to program by sitting down at a computer and trying things. Instead, they follow tutorials and exercises that *tell* them how to program. This is a hideously ineffective way of learning how to manipulate a complex system: the equivalent of learning how to play Super Mario Bros. by watching a more skilled player's fingers and mimicking their button presses without looking at the screen.

It's certainly possible to learn how to accomplish a specific task *within* a complex system – how to complete a specific level of Super Mario Bros., say, or how to write a script that prints the number of files in a directory – by rote mimicry. But this kind of "knowledge" is brittle. A slight change to the parameters of the task renders everything you've "learned" effectively useless.

To play with a system is to develop a kind of *robust* knowledge that reinforces your understanding of the system's underlying logic. The decision-making process that motivates the skilled player's button presses is the product of hundreds of thousands of cycles of action, consequence, and reaction: the core feedback loop of play. You can't acquire this kind of deep understanding, which the skilled player experiences as an intuitive "feel" for the game, merely by having the skilled player *tell you* how the game is played.

Why, then, do people learn to program through tutorials and exercises that tell rather than show? Perhaps because the tools, languages, and environments embraced by modern programming practice are at best indifferent and at worst actively hostile to play. When you first launch Super Mario Bros., you're greeted by an engaging, reactive first level designed to guide you gently into the world of the game. When you first launch the Unix shell, you're confronted by an empty, inscrutable command line that will reject, with a tersely worded error message, almost anything you choose to type.

Granted, the shell is probably inherently more complex than Super Mario Bros. The set of SMB levels that players are expected to complete is finite, while the set of shell scripts that someone might reasonably want to write is infinite. But, as SMB demonstrates, a complex system need not confront anyone with its full complexity right off the bat. Subtle cues and hints that build player confidence and ward off confusion are critical if you want to keep players from throwing aside the controller in frustration during the first ten minutes of gameplay.

Complex systems aren't going anywhere anytime soon. If anything, the ability to understand and manipulate complex systems will only become more important as software continues to eat the world. With this in mind, I think it's absolutely critical for those of us who design and develop software to take a cue from Super Mario Bros. and adopt *affording play* as an end goal for the systems we design.
