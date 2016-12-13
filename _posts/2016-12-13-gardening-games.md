---
title: Gardening games
---

*[**Note**: an earlier and substantially shorter version of this post appeared in the 2016 edition of [Seeds](http://www.procjam.com/seeds/), the [PROCJAM](http://www.procjam.com/) zine.]*

What kind of games do you think of when you think of procedural content generation?

For me, at least, a handful of especially well-known games spring immediately to mind. Minecraft. No Man's Sky. Terraria, and its sorta-but-not-really successor Starbound.

In all of these games, the main thing that's procedurally generated is the *terrain*. As a player, you can keep moving indefinitely in any direction, and the game will procedurally generate new chunks of terrain as needed to fill in the blanks.

Because the experience of playing these games depends heavily upon procedurally generated content, and because these games are strongly associated with PCG in the popular imagination, I think it makes sense to consider them as a genre of [PCG-based games](https://arxiv.org/pdf/1610.03138v1.pdf). Specifically, let's refer to them as *procedural-terrain exploration games*.

<!--Games of this form, in which you spend your time wandering through a procedurally generated world of potentially infinite size, continue to enjoy a great deal of popularity. There is clearly something appealing to players about the kind of [infinite play](http://www.gdcvault.com/play/1022083/Infinite) these games afford.-->

Judging purely by their continuing popularity, these games are undoubtedly successful. Lately, though, something about them has been bothering me, and in the long term, they seem to be completely incapable of holding my interest. When I take my first tentative steps into one of these games, its infinite world seems alive with possibilities – but gradually, as I become more accustomed to the game, playing starts to feel more and more like a repetitive grind.

In this post, I'll try to explain what exactly it is about procedural-terrain exploration games that makes me feel this way. At the same time, I'll also try to sketch out my vision for a possible alternative genre of PCG-based games. My eventual hope is that, in moving away from the genre conventions of the procedural-terrain exploration game, we might stumble upon some potential solutions to the problems facing PCG-based games as they currently exist.

***

First, let's talk about *exploration games*.

A lot of PCG-based games ask you to *explore*: to go out into the game world and actively seek out surprises amidst the procedurally generated landscape. Exploration of this kind tends to monopolize your attention; as you explore, you have to pay close attention to the terrain you’re traversing, the landmarks you encounter, and the dangers that beset your path. You must keep your wits about you as you venture ever deeper into parts unknown.

In exploration games that feature large expanses of procedurally generated terrain, this often entails spending a whole lot of time looking at “samey”, repetitive content: the connective tissue that fills the gaps between sparsely distributed points of interest. This gives rise to what Kate Compton calls the *10,000 Bowls of Oatmeal* problem:

> I can easily generate 10,000 bowls of plain oatmeal, with each oat being in a different position and different orientation, and *mathematically speaking* they will all be completely unique. But the user will likely just see *a lot of oatmeal*.
>
> <footer>Kate Compton, <a href="http://galaxykate0.tumblr.com/post/139774965871/so-you-want-to-build-a-generator">“So you want to build a generator…”</a></footer>

<!--The human brain is *really good* at completely tuning out certain kinds of *non-meaningful* variation. As a result, unless the game gives you a particular reason to care about the difference between two sections of generated terrain (or, for that matter, two bowls of oatmeal), it's all going to start to blur together pretty quickly in your head.--> In other words: with nothing to distinguish one massive flat expanse of desert from the next, the novelty of scale rapidly gives way to the tedium of picking your painstaking way across another hundred dunes.

What happens when you finally find something interesting – a temple in the desert? In many exploration games, there's no real mechanical reason to ever visit the same place twice, so the core game loop tends to go something like this: travel until you discover an interesting place; investigate it as thoroughly as you like; take from it any resources you might want or need; and then keep pushing steadily onward, away from the clean-picked remains of your past.

This, as a format, is hostile to narrative. Stories are fundamentally about change, and you can't witness change in anything or anyone besides yourself unless you observe that thing or person repeatedly over a period of time. If you never encounter the same character twice, none of the game's characters will ever have any chance to undergo long-term change.

In this sense, the exploration game format imposes strict limitations on the character stories that a game can tell. Any change that occurs in a non-player character must be made evident to the player within the scope of a single encounter. Is it any surprise, then, that the most common form of change for characters to undergo in exploration games is both instantaneously visible and clearly binary?

(I'm talking, of course, about the change from *alive* to *dead*.)

***

Now, let's talk about *gardening games*.

Gardening games are different. Where the exploration game requires its players to put in more effort if they want to encounter more surprising generated content, the gardening game keeps generating new content in the background – regardless of whether the player is paying attention to it or not – and brings any surprises it generates up to the player on its own.

The surprises of the garden are nothing as monumental as isolated temples in the desert. Instead, they are narrative surprises: surprises of cause and effect, of pushing on one small part of an interconnected system and watching the effects reverberate throughout the whole.

The player can use a variety of tools to exert influence on the garden, but the ultimate outcome is always shaped by forces entirely outside of the player’s control. You can water certain flowers and plant certain seeds, but the weather doesn’t always agree with your choices of which plants to favor. You can try to plant pink flowers over here and purple flowers over there, but don’t be too surprised if – over the course of a few generations – the indiscriminate activity of pollinators erodes the sharp distinction between the two until it falls entirely away.

To play a gardening game is to become intimately familiar with the story of a bounded space as it changes over time. The player’s attention remains fixed on a single, gradually evolving system; it is not scattered throughout a vast world whose individual parts are uniformly disconnected. To know why a garden looks the way it does today is to understand not only the histories of its individual parts, but also of the relationships between them, both past and present. In a garden, each individual flower becomes a character in an ongoing story, with a personal narrative arc all its own.

***

What games are gardening games? Neko Atsume is a gardening game. Animal Crossing is the quintessential gardening game. Stellaris, when played in a certain mostly passive style, has something of the gardening game about it. [Epitaph](https://mkremins.itch.io/epitaph), an idlegame I made for the [Fermi Paradox jam](https://itch.io/jam/fermi-paradox-jam), was initially conceived as – and largely remains – a gardening game.

Twitter bots, too, are garden-like in nature. Just as a gardener plants seeds and allows them to grow, the botmaker sets up a generator and allows it to run, stopping by occasionally to search through its recent output for a harvest of surprising content.

What is it that these games (or "games") all have in common? One important shared feature, I would argue, is the *inexorable passage of time*. In most of these games, things will go on happening in the game world regardless of whether you're actively playing or not.

In Animal Crossing, for instance, the game world's clock is tied directly to the real world's, and special events (such as holidays and festivals) are scheduled to happen on certain days in the game even if the player does not play on those days. This has two effects. First, it makes the world feel more *alive* – or, in other words, less like a solipsistic illusion created solely for the player to experience. And second, it enables you to walk away from the game when you're bored with the knowledge that there will be new, different stuff waiting for you when you come back tomorrow.

Another important common element is the *bounded world*. Unlike exploration games, gardening games don't allow you to keep moving forever in any direction. Neko Atsume gives you exactly one house; Animal Crossing, exactly one town; Stellaris, exactly one galaxy. Hit the physical bounds of the space you've been given, and that's it: you can go no further. This serves to focus your attention and keep you coming back to the same places over and over again, giving the game a chance to show you how these places evolve and change over time.

A third and final key distinguishing feature of gardening games is the *absence of a hard failure state*. In most of these games, it's impossible to lose. This dovetails nicely with the inexorable progression of time, whose inclusion in many kinds of games would cause a pressing design problem: players find it frustrating when something causes the game to end while they're away! By eliminating the "game over" state entirely, gardening games neatly avoid this issue.

In my view, it's this conjunction of inexorable time progression, bounded space, and the absence of hard failure from which the recognizable dynamics of gardening games emerge.

***

And now, let's talk about *aesthetics*.

Space, in science fiction, frequently plays the role of the final frontier: a place full of new land to settle, new resources to extract, and new native inhabitants to subjugate. In many cases, the people who go to space do so in search of a second chance: refugee-colonists fleeing a used-up Earth. *[A new life awaits you](https://www.youtube.com/watch?v=sZNzz4SaTYk) in the off-world colonies – the chance to begin again in a golden land of opportunity and adventure.* <!--Sometimes, the devastation they're escaping is explicitly ecological in nature.-->

Similarly, exploration games tend to employ procedurally generated content as a kind of *infinite frontier*. Once you've extracted and exploited and consumed your way through a particular chunk of the world, that chunk becomes fundamentally boring. All the surprise is gone: all the doors opened, all the traps dismantled, all the ores mined, all the inhabitants' stories resolved. Then, the game uses procgen to give you a fresh start – or, in other words, a chance to do the same things all over again.

This, more than anything else, stands out to me as the key difference between exploration and gardening games. In exploration games, to spend time in a place is to *deplete* it, to make it less and less interesting until there's no longer any reason to stay. In gardening games, to spend time in a place is to *enrich* it, to participate in stories and interactions and relationships that make it more interesting by virtue of your understanding of its inhabitants.

Lately, for me, the latter of these two aesthetics holds much more appeal. I'm tired of the boom-bust cycle, of draining places until there's nothing left and then chasing the infinite frontier to escape the consequences of my actions. Instead, more and more, I find myself leaning towards games that let me satisfy my desire to stay in one place and improve it: my desire, in other words, to be a gardener.

***

A few final thoughts.

The thing I find especially frustrating about procedural-terrain exploration games, even more so than the aesthetics I think they tend to promote, is the way they seem to have captured the popular imagination with regards to PCG. The particular way in which these games apply PCG seems to be making its way into mainstream game design discourse as the de facto *purpose* of procgen.

This popular conflation of "PCG" with "infinite terrain generation" bugs me because I think it tends to stifle creativity regarding how PCG might possibly be applied. Procedural content generation is an incredibly diverse and general-purpose set of techniques, and I don't want people to get the impression that procgen is inextricably tied to *any* specific set of genre conventions – regardless of how I feel about these conventions in particular!

["PCG-Based Game Design Patterns"](https://arxiv.org/pdf/1610.03138v1.pdf), the paper from which I originally took the term *PCG-based game*, is – in this sense – an incredibly useful read. By setting out a taxonomy of ways in which players might be permitted to interact with procedural generators, it calls attention to largely-overlooked parts of the design space and invites designers to fill them with entirely new kinds of games. If you have any kind of interest in PCG-based games, it's definitely worth a look.

The notion of *gardening games* that I've been talking about also draws, to a certain extent, on another idea that I couldn't quite work in anywhere else: the concept of *infinite play*, as described in [this GDC talk](http://www.gdcvault.com/play/1022083/Infinite) by Richard Lemarchand. The fantasy of the infinite frontier, it seems to me, likely has some of its roots in the desire for a sort of infinite play; so too does the gardening game, whose lack of a hard failure state seems to imply that it can continue indefinitely forward into the future.

And now: let a thousand gardening games bloom! 🌺
