---
title: Failure margins and feedback loops
---

Learning necessarily involves failure. This is because learning, by definition, takes place at the very edge of what you're able to handle: within the [zone of proximal development](https://en.wikipedia.org/wiki/Zone_of_proximal_development) that separates what you're already comfortable doing from that which you can't yet do at all.

And failure is discouraging. Fail hard enough and you're liable to start doubting even your own *ability* to learn, let alone your progress towards learning any particular subject. Overcoming the urge to quit in the face of failure is widely recognized as a difficult but critical step in the process of learning.

Despite this, people routinely and voluntarily immserse themselves in environments that require them to learn – and, consequently, to fail. I'm talking, of course, about video games.

How do games keep players coming back for more, even in the face of near-constant failure? And can the techniques used by games to keep people engaged in learning be applied to other learning activities, such as learning to program?

### Partial failure margins

As far as I can tell, the idea of the *partial failure margin* can be traced back to a 2006 GDC talk on ["Level Building for Stealth Gameplay"](http://www.roningamedeveloper.com/Materials.html) by game designer Randy Smith. (I can't find any recordings or transcripts of the talk itself, so I'll instead be referring to [Robert Yang's concise summary](http://www.blog.radiator.debacle.us/2011/07/dark-past-part-4-useful-post-or-randy.html) of the relevant parts.)

At the core of this idea is the observation that (most) stealth games tend to be way less tolerant of the player's screw-ups than (most) action games. As Yang puts it:

> In the average action game, you might have failure (i.e. 0 health), all player states in-between (1-99 health), and success (100 health). Most of the game time takes place within that in-between "limbo" portion of the spectrum.
>
> The average stealth game has failure (you've been discovered), the limbo in-between (you're being hunted), and success (you're undetected). In contrast to the action game, most of the game time takes place in that "success" part when you're in a safe hiding spot, scouting out places.
>
> <footer>Robert Yang, <a href="http://www.blog.radiator.debacle.us/2011/07/dark-past-part-4-useful-post-or-randy.html">“Dark Past (part 4): The Useful Post (?)”</a></footer>

To illustrate this point, Smith throws in some diagrams:

![Partial failure margin for action games](http://1.bp.blogspot.com/-7WuuuemiCtU/ThOS5lU4lsI/AAAAAAAAAis/UjUbKFp16Os/s1600/pask4_smith1.jpg)

![Partial failure margin for stealth games](http://3.bp.blogspot.com/-JK9TjG-Me4Y/ThOS-21dinI/AAAAAAAAAiw/O9b8McGTNrc/s1600/pask4_smith2.jpg)

Because of the comparatively narrow *partial failure margin*, an average player's run through an average stealth sequence is much more likely than a comparable run through an average action sequence to end in *total failure*: capture or death, followed by a game-over screen. Total failure is both frustrating and flow-breaking, and it's something we (as game designers) usually want players to be able to avoid.

To understand why this is the case, we'll turn to [Tom Francis's take](http://www.pentadact.com/2014-12-29-what-works-and-why-invisible-inc/) on the concept of the partial failure margin. (Technically, he calls it the *failure spectrum*, although it's clearly the same idea underneath.)

> A big failure spectrum is good because a lot of the most emotional moments in a game happen on the cusp of failure. If you were *this* close to being seen, your escape is exhilarating. But if failure is a ‘game over’ screen, spending a lot of time on the cusp of failure means a lot of ‘game over’ screens. Each one interrupts your immersion and ends your investment in this current run. It pulls you out of the game, and you find yourself in a menu, then at a checkpoint or a savegame. Mentally acclimatising to how much of your story has been lost forces you to disengage from it, and you have to build up all that immersion again from scratch.
>
> <footer>Tom Francis, <a href="http://www.pentadact.com/2014-12-29-what-works-and-why-invisible-inc/">“What Works And Why: Invisible Inc”</a></footer>

In other words: total failure comes with a *cost* in terms of time and effort wasted, immersion shattered, and story progress lost. This cost is the number-one reason that players tend to become frustrated and discouraged when they experience total failure.

Thus, if you want to keep the player engaged, it's almost always better to leave them in a *partial* failure state, with an opportunity to recover from whatever mistake they made and salvage their current run, than to cut them off completely. You still need the *possibility* of total failure to motivate players to avoid making mistakes in the first place, but ideally, they'll rarely – if ever – mess up hard enough to actually wind up in the total failure state.

Hence Smith's argument: that the goal of stealth level design is to expand the narrow-by-default margin of partial failure as much as possible. A well-designed level encourages players to take risks that may get them detected, while also giving them plenty of chances to recover from their mistakes. Most of the player's time should be spent in various states of partial failure, the rhythm of gameplay punctuated by narrow escapes and near brushes with disaster.

Many modern stealth games seem to have taken this advice to heart. [Another post by Tom Francis](http://www.pentadact.com/2015-09-13-things-about-metal-gear-solid-v-spoiler-free/) enumerates nearly a dozen different ways that Metal Gear Solid V permits players to recover from the partial failure of being spotted by a guard. Until every last one of these methods has been tried and exhausted, the player still has a shot at salvaging their run.

### Game over

Let's change gears a bit, now, and talk about programming – and, more specifically, about the idea of *programming as theory building*. This idea was first put forth by Peter Naur in his [essay of the same title](http://pages.cs.wisc.edu/~remzi/Naur.pdf), in which he argues that

> [...] what has to be built by the programmer is a theory of how certain affairs of the world will be handled by, or supported by, a computer program.
>
> <footer>Peter Naur, <a href="http://pages.cs.wisc.edu/~remzi/Naur.pdf">“Programming as Theory Building”</a></footer>

Essentially, the programmer's aim is to develop a *theory* of how some high-level goal can be accomplished through the application of a specific procedure or algorithm, and of how that algorithm can then be expressed as machine-executable code.

One implication of this view, Naur notes, is that

> [The] problem of education of new programmers [...] is quite similar to that of the educational problem of other activities where the knowledge of how to do certain things dominates over the knowledge that certain things are the case, such as writing and playing a musical instrument. The most important educational activity is the student's doing the relevant things under suitable supervision and guidance.
>
> <footer>Peter Naur, <a href="http://pages.cs.wisc.edu/~remzi/Naur.pdf">“Programming as Theory Building”</a></footer>

Naur is suggesting, here, that programming – at least from an educational perspective – belongs to a category of activities in which [procedural knowledge](https://en.wikipedia.org/wiki/Procedural_knowledge) "dominates over" [declarative](https://en.wikipedia.org/wiki/Descriptive_knowledge). Certainly the activity of playing games would also seem to belong to this category!

And, indeed, the process of learning how to complete an unfamiliar level in a video game is remarkably similar to the process of learning how to write an unfamiliar program. Just as the programmer gradually develops a theory of how to translate some high-level idea into code, the player gradually develops a theory of how to translate *beating the level* into a particular series of button presses.

Perhaps this is why hitting a compilation or parse error when you go to run your program feels so much like hitting a game-over screen in a video game. An unexpected compilation failure, much like a game-over screen, represents a total failure state: a sign that your current theory of how to write the desired program is fundamentally incorrect. To resolve the error, you'll have to go back in and start rebuilding your theory, just as if you were replaying an unexpectedly difficult level to try and put right what went wrong on the previous run.

### Mitigating discouragement

Total failure is discouraging in any context, but programming tools – unlike games – rarely seem to be designed with this in mind. The core activity loop of programming, especially for beginners, typically looks something like the following:

1. Develop a theory of how to write a particular program.
2. Type some code into a text file, one character at a time.
3. Attempt to compile, and maybe run, the program.
4. Repeat until either successful (yay!) or too frustrated to continue.

Feedback on the program's validity comes primarily from the compiler, which is invoked only occasionally and often takes several seconds to run. What's more, a single misplaced character of input is often enough to halt the compiler in its tracks, creating an absurdly narrow partial failure margin: reminiscent of those stealth games in which one wrong move is sufficient to get you detected and booted back to the start of the level.

*But* there do exist programming tools that break this mold, and these tools tend to handle failure very differently than their more traditional relatives. This is especially true of those programming tools that were specifically designed for the purpose of education.

Let's take a closer look at some of the recurring patterns in how games and programming tools alike handle failure. Which approaches are effective at mitigating discouragement, and why?

#### Fail tiny, fail often

Users of the educational programming environment [Scratch](https://scratch.mit.edu/) do not construct programs by typing code into text files. Instead, they construct programs by snapping together discrete "blocks" of functionality in a drag-and-drop workbench-style UI.

Each block has a "shape" that describes the roles it might play in the program. Only blocks with compatible shapes may be snapped together. By preventing users from snapping together mismatched blocks, Scratch effectively prohibits the construction of structurally invalid programs. In the process, it also does away with the need for traditional compile-time syntax and type errors: error messages that appear only when the user attempts to run the program.

Thus, Scratch eliminates an entire category of infrequently-occurring *total* failures (compile-time error messages caused by structurally invalid code) in exchange for an increased frequency of *partial* failures (failed attempts to snap together two mismatched blocks). Whereas a single total failure might seem to invalidate minutes or even hours of work, the perceived cost of each partial failure rarely amounts to more than a few seconds of "wasted" time.

This is a straightforward case of widening the partial failure margin. What would ordinarily be a single total failure is instead diffused into dozens, even hundreds, of barely-noticeable partial failures, and the discouragement of failure is no longer delivered all at once.

#### Checkpoints and restarts

Some games – especially one-hit-kill action games like [Hotline Miami](http://www.hotlinemiami.com/), in which taking *any* amount of damage results in immediate death – manage to succeed even in spite of their razor-thin partial failure margins. What explains this apparent contradiction?

Hotline Miami in particular contains examples of several design patterns that are often adopted to maintain player motivation in scenarios where total failure is always only one wrong move away. Most notably, it employs both *frequent checkpointing* and *low-friction restarts* to keep the cost of total failure relatively low.

A game that employs *frequent checkpointing* automatically saves the player's progress at each checkpoint they encounter. Death merely results in the loss of progress made since the previous checkpoint, and checkpoints are scattered liberally throughout the game world. Thus, it's rare for a single failure to result in the loss of more than a few minutes of progress at once.

*Low-friction restarts*, meanwhile, make it quick and easy for the player to hop back into the game after death. Rather than playing a lengthy death animation for the player character, transitioning to a separate "game over" screen, or bringing up a menu that gives the player a choice of whether to restart or quit, Hotline Miami merely pops up a text overlay reading ["PRESS R TO RESTART!"](https://www.google.com/search?q="press+r+to+restart") As soon as the player presses R, they're back in the game at the previous checkpoint.

If you adapt these patterns to programming, you get something that looks very much like a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop). Successfully defining a new function in the REPL establishes a checkpoint: because the REPL (ideally) doesn't crash on failure, you don't have to worry about restarting it and re-entering all your previous definitions if the next one *does* happen to fail. Meanwhile, the REPL encourages you to keep each individual definition small and relatively self-contained, leading you to establish checkpoints both early and often.

#### Killcams and error messages

Low-friction restarts work well when some other factor (such as frequent checkpointing) is suppressing the cost of failure, but what if failure is necessarily costly? In the competitive multiplayer game [Team Fortress 2](http://www.teamfortress.com/), for instance, a player who dies must then spend several seconds waiting before they are allowed to respawn. Some third-party TF2 servers, in accordance with the principle of low-friction restarts, change this behavior and allow players to respawn immediately; this invariably throws off the competitive balance, making players feel that the game is unfair.

In lieu of low-friction restarts, then, TF2 takes a different approach to mitigating player discouragement during the mandatory waiting period between death and respawning. When you die in TF2, the game first shows you a *killcam* – a static shot of the enemy responsible for your death – to give you a better idea of how exactly you died. Then, for the rest of the waiting period, it allows you to observe what your still-living allies are currently doing, so that you'll have some sense of what to do next when you finally respawn.

This is much more helpful than a typical game-over screen. Rather than merely invalidating your theory of how to beat the other team, TF2 gives you specific, contextualized feedback on how your theory was flawed ("you were killed by a sniper up on that rooftop") and how it might be adjusted ("your teammates in the tunnel are still alive, maybe try going through there instead").

The [Elm](http://elm-lang.org/) programming language, with its emphasis on [human-friendly compiler errors](http://elm-lang.org/blog/compiler-errors-for-humans), adopts a similar approach. Every Elm compiler error includes both the exact code that caused the error, formatted exactly as the user wrote it, and one or more suggestions concerning how the error might be fixed. Thus, even though total failure is still costly, the discouragement of encountering a total failure state is mitigated by the suggestion of a viable way to proceed.

### Closing the loop

What do all of these patterns have in common? Most obvious, it seems to me, is that all of them essentially *tighten the feedback loop* between failure and renewed play. So far as I know, this is an unambiguously good thing: a sufficiently tight feedback loop enables people to [learn by trying and reacting](http://mkremins.github.io/blog/why-affording-play/) in a way that feels very natural for skills, like programming, that rely heavily on procedural knowledge.

Overall, then, if you want to design more readily learnable tools (or, for that matter, more readily learnable games), consider trying for tighter feedback loops and wider margins of partial failure. Your [users/players/students] will thank you!

<style>ol li {margin-bottom: 0;}</style>
