---
title: History generation in Epitaph
permalink: /blog/history-generation-epitaph
---

A little while ago, someone emailed me to ask how my game [Epitaph](https://mkremins.itch.io/epitaph) procedurally generates histories for its various procedurally generated alien civilizations. In response, I wrote up a quick summary of how Epitaph actually works behind the scenes. Going back and re-reading that response today, I think it's substantial and potentially useful enough to repurpose as a ["reply to public"](http://matt.might.net/articles/how-to-blog-as-an-academic/), so I'm reproducing it here for the curious.

(Note that this post contains what could loosely be termed "spoilers" for Epitaph. You have been warned.)

***

In Epitaph, there's two kinds of things that can happen to a civilization – [events](https://github.com/mkremins/epitaph/blob/master/src/epitaph/events.cljs) and [techs](https://github.com/mkremins/epitaph/blob/master/src/epitaph/techs.cljs).

*Techs* are organized into something approximately equivalent to a [tech tree](https://en.wikipedia.org/wiki/Technology_tree). They can be taught by the player, but can also be discovered independently by the civilization. Each individual tech has a set of *prerequisites* – other techs that have to be known before this tech becomes available. Many techs influence the odds that certain events will happen: a tech can have an associated map of *event chances* which either increase or decrease the per-tick likelihood that certain events will occur. A few techs (writing, the printing press, and networked computers) also increase the *tech discovery chance*, i.e. the per-tick odds that this civilization will discover a new tech on their own.

*Events* are divided into two categories (extinction and flavor events), but they function pretty much the same outside of the fact that extinction events result in a "game over" for this civilization and flavor events don't. Like techs, events can have their own associated *event chances* maps that influence the odds of other events happening in the future. Events also have *implicit prerequisites* in that an event can only happen if something (either a tech or another event) has already set the likelihood of this event to something greater than zero. ([A few events](https://github.com/mkremins/epitaph/blob/master/src/epitaph/civs.cljs#L110-L114) have nonzero likelihood of occurring from the moment the civilization is first generated, and the chance of discovering a new tech is likewise always greater than zero.)

The textual descriptions of events and techs are generated with grammars. [Here's an example](https://github.com/mkremins/epitaph/blob/master/src/epitaph/techs.cljs#L94-L101). Certain game-wide global variables (like the current stardate) and civilization-specific global variables (like the name of the largest city, or the name of the primary crop they cultivate) can also be substituted in. In fact, any civilization-specific bit of text that appears in the descriptions of multiple events or techs is set up front as a global variable for that civilization at the moment the civilization is first generated. (You can see [the full list of these global variables](https://github.com/mkremins/epitaph/blob/master/src/epitaph/civs.cljs#L96-L108) in the source code for the `epitaph.civs/gen-civ` function.) This ensures some consistency across multiple chunks of generated text for the same civilization, although there's no guarantee that all of these variables will ever actually be surfaced for any given civ.

During gameplay, there's nothing especially fancy going on. On each tick, the game just looks at the odds that certain things will happen to each civilization, and rolls the dice to see which (if any) will actually take place.

***

If you want to read more about the procedural generation of history, I strongly recommend Jason Grinblat and Brian Bucklew's paper on [history generation in Caves of Qud](https://dl.acm.org/citation.cfm?id=3110574). One particularly neat trick they use to generate coherent historical narratives is to "subvert cause and effect" by first generating sequences of historical events, then coming up with after-the-fact narrative rationalizations for these events. Jason gave [a talk on this approach](https://www.youtube.com/watch?v=ClGAApZYIvI) at the 2017 Roguelike Celebration, and will be presenting [an expanded version of the talk](http://schedule.gdconf.com/session/procedurally-generating-history-in-%27caves-of-qud%27/854704) that also touches on history generation in Epitaph and Dwarf Fortress at GDC later this year.
