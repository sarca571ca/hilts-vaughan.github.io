---
layout: post
comments: true
title: Honest Perspective - A year on Arch Linux coming from Windows and macOS
categories:
- blog
---

# Honest Perspective: A year on Arch Linux coming from Windows and macOS

A little background about me before we begin fully:

- I'm a Software Developer in Canada, I've been writing web applications professionally for a number of years
- Most of my development is done in **Java**, **C#**, and **Javascript**. So, this will be written from the perspective of someone who works in those technologies where applicable. However, in general, my experience with development was very pleasant, so there is not much to write about! 
- My previous Linux experience amounts to working on a remote server with a few basic *NIX commands and using macOS
- I like a little bit of punishment when I do things wrong and understanding why my decisions were poor -- this ties into my distribution choice later on

A little over a year ago, I switched from Windows to Linux completely on my journey to finding a better development environment that would serve me on my home machine. At the time, the [Windows Subsystem for Linux did not exist.](https://msdn.microsoft.com/en-us/commandline/wsl/install-win10) There were a few reasons I wanted to switch over:

* There were some development tools that I used a lot that I just wish I could use hassle-free under Windows. They were mostly Linux tools or software. These includes a lot of command line utilities and other goodies  `grep`, `dd`, `zsh` , `git` and a host of other things. Some of these worked fine under Windows, such as `git`, but the experience was not as good.
* I was sick of being unable to properly diagnose my machine under Windows with full understanding. The kernel logs were not as easily exposed and things were always a bit more arcane when they went wrong, with less hope of debugging them on my own. I take pride in being able to debug software -- why not my operating system when I need to be able to?
* I wanted to try a new workflow other than the one Windows could provide me with. This included new file managers, new desktop environments and new ways of navigating my machine. After using a Mac for a while, I had come to appreciate some of the features macOS had that Windows did not natively, such as brew and workspaces (before Windows had any!). (Yes, I know [Chocolately](https://chocolatey.org/) and there are other 3rd party workspace managers, but none of them were tightly integrated with the OS and felt bolted on through some "not-designed-for-this" APIs)
* I wanted to play around more with [Docker](https://www.docker.com/) a little more and "Docker Machine" was a pain and it was not the "native experience" that Docker was claiming to fame. I played around with it in a Virtual Machine a bit but I wanted to experience the full thing inside of a native operating system.
* It was something new and cool -- who doesn't like cool and new things?



## Choices & Setting up

I spent a long while deciding on what distribution to install and I eventually settled on [Arch Linux](https://www.archlinux.org/). There were a few reasons for this but the main decision points just boiled down to this:

* The AUR is awesome and had almost everything I could have wanted when I researched it, this seemed like a great perk.
* I wanted up to date drivers and video hardware. At the time, I was running  an AMD card and I heard the bleeding edge drivers were a lot better. As it would turn out later, better was not even close to good enough at the time.
* I wanted some a little less abstract so I could learn the nuts and bolts
* I needed something that out of the box would let me do all the customization I needed.  For example, I already knew I wanted [i3-gaps](https://github.com/Airblader/i3) and wanted to try some alternative menus such as `dmenu`. This made it harder to choose distros that would prepackage their own environment which I would then have to dissect.
*   I needed to be able to install all the developers tools I needed with no friction, and the AUR was a huge help with this.
* .. and it was hyped up to be the best thing since sliced bread. Might as well play the hype machine, right?

The runner ups were **Ubunutu** and **Manjaro**. **Ubuntu** was too stock and in the way of what I wanted to do, so it was out.  Manjaro? Well, I read something about a SSL certificate that went something like, not once, but twice:

> Hello!
>
> Our SSL certificate has once again expired. We are waiting for a new one to be issued (while also looking at more sustainable alternatives, i.e. Let’s Encrypt). If you’re having problems accessing any of the sites please use a different browser profile, or Private/Incognito Browsing. You will then be able to add a temporary exception.
>
> Example (Firefox 46)
>
> https://manjaro.github.io/SSL-Certificate-Expired/



.. and it left a bad impression. So, that was out. I figured I might as well for the full authentic experience.  

So, I followed the [Beginner's Install Guide](https://wiki.archlinux.org/index.php/Installation_guide)  and was installed in a couple hours with GDM and `i3-gaps` with a multi-monitor setup using `arandr` to configure myself. I did the initial run with `gnome` since I figured it would give me the least amount of problems and at least a working environment to boot into. These are the notes I left for myself when I had installed:

*  `arandr` did not work out of the box and I had to manually create my `xorg` file. This was kind of annoying but considering it worked under the GNOME Environment that I initially installed, I assume it was a bug with `arandr` or the way I was using it. 
* The video drivers for AMD were bad. I was unable to play most games on Steam with acceptable frame rates. My 7770 was already getting pretty old and I was eying a 970 anyway, so I bit the bullet with the understanding that: NVIDIA drivers were better on Linux than AMD and that I would be able to play things and the monitor setup would be easier. Turns out, both were true. Success!
* The media keys were not working out of the box on my keyboard along with some other things taken for granted. I did want a DIY approach and I think some of this worked under GNOME when I tried it briefly, but it would have been nice if there pre-packaged sane defaults that I could install. I ended up installing `i3-gnome` which gave my some of these "sane defaults" I wanted by running some of the GNOME subsystem. Other things missing which I did not realize I had missed: easy screen snipping, volume management, and well thought out settings GUI applications for the day to day stuff. 
* I had to jump through some hoops to customize my K70 keyboard again. I just configured it and left it alone..
* I had a problem where I noticed fonts sucked really bad out of the box. I had to install some additional packages to make it look better.
* Some of my games and applications would not launch due to missing libraries. I had to learn how to `ldd`... I guess I asked for it.

*Note: At the time of writing this, it looks like the Beginner's Guide no longer exists. It seems it has been consolidated. I cannot comment on the quality of this new guide.*

The final setup looks  something like this after all is said and done. I think the only thing I have done since is added another 8GB of RAM to keep things happy, especially since I needed the Windows VM from time to time now. 

```bash
'                   -`                   touma@setsuna 
                  .o+`                   ------------- 
                 `ooo/                   OS: Arch Linux x86_64 
                `+oooo:                  Kernel: 4.13.11-1-ARCH 
               `+oooooo:                 Uptime: 7 days, 6 minutes 
               -+oooooo+:                Packages: 1649 
             `/:-:++oooo+:               Shell: zsh 5.4.2 
            `/++++/+++++++:              Resolution: 1920x1080 
           `/++++++++++++++:             WM: i3 
          `/+++ooooooooooooo/`           Theme: Arc-Dark [GTK2/3] 
         ./ooosssso++osssssso+`          Icons: HighContrast [GTK2/3] 
        .oossssso-````/ossssss+`         Terminal: terminator 
       -osssssso.      :ssssssso.        CPU: Intel i5-2500 (4) @ 3.7GHz 
      :osssssss/        osssso+++.       GPU: NVIDIA GeForce GTX 970 
     /ossssssss/        +ssssooo/-       Memory: 7041MiB / 16013MiB 
   `/ossssso+/:-        -:/+osssso+- 
  `+sso+:-`                 `.-/+oso:                            
 `++:.                           `-/+/ 
 .`                                 `/ 



```

### Package managers are great

There's nothing much to say here. I always liked `brew` on macOS even if it was a bit clunky to use and the method of installing it was, shady, at best. After using `pacman` for a while, I can say that I never want to go back to manual installers infested with AdWare ever again. You get so much for free with `pacman`, some of which is not exclusive to it, but just a part of package managers in general in most distros:

* Dependency Management
* Versioning (rollbacks, if needed)
* Visibility into what is about to be installed
* Installs in **seconds** in some cases

Seriously. They are awesome. I wish Windows was more careful about this kind of thing and that macOS supported something a bit better. I guess the application stores are getting there, but they are a little more cumbersome and not really "developer oriented".

I won't go into this more. There are dozens of articles on the web detailing why they are great.

### Picking your own file manager is great, better selection 

There are replacements for the file managers on Windows as well but they are not as well integrated and a lot of them I find are pretty clunky. I have found I actually really like `pcmanfm`. It has very few animations on my setup, the search is very fast, I can hop directories with little trouble, it integrates well with my dark theme, and it still has enough features to not get in my way. For example, with `gvfs` it plays with automounts fine, script executing, and good selection capabilities. And it's integrated with my system with no additional trickery. I also tried `dolphin` and `nautilus` and found them okay as well but not quite my taste.

In Windows and macOS, changing the file manager is pretty tricky across the entire system from my experience. Windows Explorer I find is pretty good. I found "Finder" almost unusable and just using `MacRanger` on macOS for the small amount of times I need a file manager there.

It was refreshing to pick something I like and being able to zip through folders at high speed. 

### Web development is great as well

There is also not much to say here, either. For my development work there were a few immediate benefits in most cases:

1. Reduced CPU usage in the case of some "file watcher" implementations due to better native support.
2. The support in general was better for a lot of tools -- including Apache and Docker. I was able to spin up tons of projects and keep them running with minimal resource usage.  This was awesome -- Docker Machine was unable to do that.
3. The Git CLI was a first class citizen. It worked great with some ZSH extensions and made me appreciate what the CLI could do that Windows was unable to do. I was used to this from macOS but it was nice to see it not exclusive to there.
4. Scripts other people wrote just worked. You found something on StackOverflow for `git` or some other tool you wanted to run? There is a chance it is written in `bash` or `perl` They ran with no problem without any additional tools in most cases. When they did not, `pacman -S` got me sorted in a few seconds.

Overall, a much better experience than Windows and even a little better than macOS. I'm looking at you, long polling implementations for file watching under macOS. 

### Java  & C#

**C#: ** Project Rider and Visual Studio Code do a wonderful  job of giving you a competent environment to write code for this language. I was able to maintain the handful of console applications and the .NET Core applications I needed to without much trouble within these environments. They ran pretty good.  Visual Studio Code  is a bit laggy but much more responsive than Atom. Considering writing C# code on Linux was not even an option not so long ago, this is something I am excited about.

**Java: ** IntellIj worked out of the box pretty much the same. No comment here. 

All things considered, the experience in these were on par with what I was getting before. Thus, no complaints.

### Games are still a problem in some cases, but I was pleasantly surprised how well things ran when they did work

I use Steam to play most of my games. It's not a secret that if you want to access the largest collection of games possible, you need to have an account here. I also happen to like playing games with some of my friends on this platform. These are a few notes from  that experience.

A surprising amount of   games have ports that run pretty well. For example,  Terraria had a good port and Minecraft runs very well. Civilization works well, as well. Borderlands 2 was a nice surprise, as well. Some of the games that did not have ports  would run fine under WINE. For example, the first Borderlands was played from start to finish over the Internet with a Windows user. I had a hard crash or two but other than that, everything went fine. However, there are a few times where I spent way too much time trying to get things to work. For example, "Duck Game" was not working in my prefix for some various reasons which I eventually resolved. It's kind of annoying to have friends ping you to ask you to play -- just to have to turn them down because you *cannot start the game.*  Ouch. Nowadays, we mostly play Linux compatible titles with more and more companies releasing for the platform. For single player games, I just do not buy games that do not support my platform of choice or I just play on a console.

*I made an exception for the Trails in the Sky series. The series is amazing and the XSEED team did an amazing job bringing it to us. If you have not read the struggle and immense amount of work that went into [localizing the game I suggest you read it here if you have some time.](https://kotaku.com/the-curse-of-kiseki-how-one-of-japans-biggest-rpgs-bar-1740055631) The article is a bit long but it comes from the heart. I've played the latter  two games inside of WINE with no problems since they are older.*

Performance is just okay. There are a few instances where the performance has clearly taken a hit in order to be playable on Linux. There were problems unrelated to ports, too. When I first installed `dolphin-emu` from the AUR, I was unable to play any emulated games of my choosing from my ripped library with adequate performance. Most of them would lag pretty hard. I was not the only one, either. Check out these quotes from the AUR:

> Dolphin-emu is still super slow with the new Nvidia driver 364.16 (it was all good months ago).  -Neros

> I'm also using NVIDIA and noticed that the performance is very impaired in some cases. I don't know since when exactly, because I'm not playing regularly. -Martchus

There are other cases as well. At the time of writing, the problem  no longer exists. It resolved itself after a routine update sometime a few months ago. However, I am documenting it here since it was real and it stopped me from playing some of my older games without unpacking my Gamecube.

In other cases, some emulators worked better under Linux in terms of compiling and setting up.  Simply put, the experience is not the same. However, for me, the experience was close enough that I am happy with it in 2017.

### Tiling window managers are awesome! 

I've been using `i3` for a about a year now. And when Wayland hits, I think I will also check out `sway` ([link](https://github.com/swaywm/sway)) and continue to use the same kind of layout for a while. These are the primary reasons I wanted to start using it:

* I found myself maximizing a lot of windows by hand anyway, such as Chrome and most of the windows I was "working with" and then laying them out side by side
* I loved being able to snap Windows in interesting ways.  This is one of the features macOS is missing out of the box that annoys me every day.  The fact that I have to find my mouse and drag a window to fit how I want is annoying enough -- this could be achieved with other window managers, but `i3` has a whole other level of control in this   category.
* I wanted a keyboard driven work flow. I already spent most of my time in a terminal in Windows and in my text editor, an environment that would allow me to spend more time on my keyboard and less on the mouse was a plus.
* I wanted something that would let me build something of my own, "ricing" seemed kind of fun. :) 



[I followed this set of screen casts to learn the basics](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf) and then after and that I went on to read the documentation to put a few more customizations in place that I required (mostly floating windows for my file manager and a few keyboard repeat settings and color changes) and then I used the setup for about a year.  These are some things I found awesome about tiling window managers, and i3 in particular:

* The learning curve was not that bad at all. I think after some custom configuration I was productive using it in as little as a couple weeks.  Within a month, I was able to accomplish some tasks faster than using the old window modal method.
* I was able to create my own "custom development environment" with no trouble.  I could tile a code editor, such as Atom, and a terminal on the bottom. This allowed me to use the best native bits of my platform when it was called for without needing to do a bunch of dragging on the screen. No interrupted thoughts!
* I was able to create custom launch configurations and layouts for frequent tasks.
* I always knew exactly where everything was.  Browser was always on Desktop 1, no more flipping through windows.  My development environment was always on  3. Scratch workspaces always on 0.  Everything has a home.
* Multi-monitor support worked in the way I wanted it to. To the above point, certain workspaces were always on the other monitor. This  was super  handy for flipping to a documentation window or when playing a game with friends and I needed to pull up a Wiki page. (Need focus on that Terraria wiki page over there?  `Super +  Right` will get you sorted out there without guessing how many "Alt-Tab"s you would need to get there. Your hands are already on the keyboard anyway, right?)
* Yet, it remained able to do things I needed it to. In the Tabbed Mode of `i3`, I was able to replicate the old Alt + Tab workflow where it was needed. I could stack a bunch of things in sequence and get it done.
* Minimalistic and less space taken up. `i3bar` and `i3` with no window chrome allows me to focus on what I am doing. I'm typing on `typora` right now and everything is clean and with little distraction. I can full screen any application with the press of a few buttons. There is nothing to get in my way of authoring content.
* Paired with Vimium for Chrome, it was a real joy to be able to drive everything with the keyboard!
* It looked great and it was mine.

**What was not so hot?**

* File Managers were kind of harder to use. I don't always to stack my file manager. So, I made it a popover scratch window bound to `Super +  -`  and this lets it float over top of the other windows. This is handy when I need to just recall something very fast and don't want to have to place it somewhere. However, it's not the only application...
* Opening things outside of the normal work flow could be annoying and take some forethought when it used to be effortless. For example, opening that JPEG of that puppy? Well, it's going to split your screen in some way to make room for it. However, now you can only see half the puppy!  Better waste some time resizing... ah well.  I've worked around this by specifying manual overrides for some windows to launch in full screen or to open in specific workspaces.  In some extreme cases, I make them floating since they just work better like this. It's a bit jarring but it's not often I need to break out of this workflow since I normally use my PC these days to work on the same type of tasks.
* Some games are not very cooperative with it. For example, sometimes they will spawn at quarter resolution in the middle of the screen and I have to hunt them with my mouse and then full screen them. Annoying. But livable.
* Other people have no idea how to use my computer. My life partner knows how to use it when she needs to from time to time but I had to show her a few things.  It's not very friendly to people who have no idea what they are doing. However, in the end it's my machine to work done.

I will also say this: The `i3` developers have done a great job making things robust and stable. I have not had to fix or tweak my `.i3config` much since I created it. Things have just been working. Kudos! If you have not tried a tiling window manager and you have similar needs to me, it would be worth checking out at least. I was skeptical at first but it was a game changer for me.

### Misc moments where I thought: "This is **amazing**!"

* Forgot to sleep the PC before bed and already tucked in? Within 30 seconds, I was able to SSH in to the already installed and configured daemon (from a prior setup) and simply sleep it from the CLI.   
* Native SSH is awesome for administering a file server. Sure, there is Putty on Windows which is widely used but it's just not nearly as nice. Nothing is as good as using your terminal from your own computer with all your configuration already setup.
* `rsnapshot` is amazing and I love backing up my server with it. Part of this is the great filesystems provided and available with Linux.
* Dotfiles synced with `Git` to my laptop is nice. Keeping configs in sync on other platforms is less than fun without some kind of cloud storage. 
* **Being able to modify the source code of a package, and then have it still managed by my package manager**. This is a great feeling, even if a bit of a hack. You can read more on my .NET Core experience to know why this was a boon but being able to just modify an "installer" that was open and **fix my problem** is great. 
* Just running `youtube-dl` against a site and noticing that I was already running the most up to date version and that I would not have to waste time making sure I was up to date. The same goes with other packages. 
* Hey, I can run the tools my server is running!
* I didn't like the color of some things on the my GTK theme. So, I opened up the theme overrides and applied some CSS. Done.
* Docker is working the way I wanted it to!!
* When was the last time I was nagged to do a system update, again?
* Stability: I have had up time that was longer than I should admit because I really should have patched my kernel. 

## So, what are some of the things that bothered me more?

There's a few things that bother me and they might have something to do with me running an odd setup. However, I wanted to give an honest recollection from someone who just dove right in.

### January 2017: Infinality fiasco

I did a full system update like any other day. Then, I got a bunch of errors about repositories that I had been using being discontinued. I guess "Infinality" had been discontinued and it was now up to me to decide what to do. I was not able to update until I resolved it.  

I probably spent a couple hours resolving things while I was trying to figure out what was going on. At the same time, I really needed a newer version of a package and this was kind of in the way. Arch has a pseduo-rule that you should never do partial  upgrades, so that was out of the question.

In the end, I found some advice to migrate away and managed to get my system into a better state. 

### April 2017: Microsoft Word stops working in WINE

A day in April I did a full system update, using `pacman` and then tried to run my `wine-prefix` containing **Microsoft Word**. Yeah, I was using this product since I was used to it and needed something to ease the transition. It stopped working, WINE was a pain to debug and in the end I discovered I really only needed Google Documents and LibreOffice for the occasional thing. So, I never got to the bottom of this. However, it is annoying that things stop working "randomly". 

I treat this as a minor incident but I wanted to point it out since a lot of the time you will hear the rumour that "Arch does not break! It is user error if your system stops working." 

User-space applications certainly do break sometimes.

### August 2017: .NET Core

I was working on a new client project and had inherited some .NET Core code that was already running in production. I had the goal of adding some new features to and re-writing the UI. I estimated this would probably take a dozen hours or so, of which maybe 10 of them would be billable. The rest of them would be new environment configuration that I was responsible for since I had not worked in .NET Core before. I was pretty excited to start especially since Microsoft had announced recently that .NET Core support would be coming to Linux. They had even announced a cool new editor that is now loved by many, known as Visual Studio Code. Alas, things were not so easy...

Arch Linux was not a supported problem. I ran to the **AUR** which is my response to these kinds of things to see what I could find. I found a package (that is no longer available now) and installed it. The package itself installed fine without many problems and I wrote a couple "Hello World" applications. I started up a basic ASP.NET core project as well and everything seemed fine. *Success!* or so I thought. As it would turn out, making any sort of database query would cause a native exception to be thrown. You can read about how I ended up resolving this [here](http://vaughanhilts.me/blog/2017/02/06/openssl-with-sslv3-on-arch-linux-for-dot-net-core.html) but in the end it ended up costing me over 6 hours to debug this thing and trace it down. I doubt I am the only one either, since if you end up searching for my post, it's linked around the web a few times as well as the solution to the problem for the .NET Core 1.x series. I have not followed up to see if the .NET Core 2.x series has this problem.

In the end, it was not so bad but on Windows this probably would have worked out of the box considering it's Microsoft's own platform. Then again, I have vague memories of installing Visual Studio and it not starting and having no recourse to debug...

### November 2017: Full Machine Breakage

I ran a full system update and there was an OpenSSL change. I took the upgrades and followed  the mailing list advice but still ended up with a bricked machine. A little disappointing but it was probably my fault somehow. Still, bricking a machine is no fun. The journal had indicated something about failed updates and failure to rollback -- so I left it for a while.

I never did figure out the exact problem, however, when I did `ssh` into the machine from a different PC and ran another full system update the next day, the problem resolved itself.  +1 for being able to read your logs, huh?

Huh. I still need to dig into this one.

### Reverse Engineering Tools still aren't all the way there

In one of my [previous posts](http://vaughanhilts.me/blog/2016/11/16/reverse-engineering-trails-in-the-sky-ed-6-game-engine.html), I reverse-engineered the game "Trails in the Sky" and provided an introduction to [Kaitai Struct](http://kaitai.io/) inside of it. You will notice I used a lot of NIX* tools in that guide. However, what is glossed over, is that a lot of the debugging was done on Windows with a debugger there. This is partly because the game is a Windows Executable and partly because the tools for debugging them were just better over there. There's a couple reasons for that but it all stems to the ecosystem:

- There are better memory editors on Windows, such as Cheat Engine that aided in probing the data
- There are better debuggers for Windows executables there. The reason should be obvious: most developers debug  Windows Executables on Windows
- I was able to actually able to **run**  the executable there without needing to have WINE running as an abstraction over top of it

### GIMP is no Photoshop

Some people might try and convince you that **GIMP** is a fine replacement but they were probably not power users. It's true, if you just need to move some things around on a canvas and trim them, it is probably fine. Even for basic effects, it is probably fine. However, I found when loading complicated images and trying to do operations, things were just too different. Could I have done them with GIMP? Yeah, I probably could have. For now? I will stick to the free edition of [Photoshop CS2](http://www.redmondpie.com/download-adobe-photoshop-cs2-for-free-legally-while-you-still-can/) that was given out and use my time for other things that are of more value for me. There are only so many hours in the day and re-learning an image editing tool for the simple tasks I need to do are not worth my time. For the record, I found even basic stuff like: scaling layers, adding text effects, actions, and blending modes -- a bit cumbersome. I think it was a combination of unfamiliarity and the clumsy UI.  It also did not cooperate very well out of the box with `i3wm` and I had to do some setting tweaks and set it to full screen to get it to work even remotely well.

### PlayOnLinux is not all that good in a lot of cases

For some of the Windows applications I was holding onto, I was trying to run them in a wine prefix under PlayOnLinux. I figured that since I only had a couple applications that I wanted to run, as the the old Photoshop CS2, I could just use this and not worry about learning the details. Unfortunately, in a lot of cases the scripts are older and use a very old WINE version. In some extreme cases, they do not work at all anymore. I assume this is due to changing systems and things probably do not look like they did when they were written. I learned fairly quick that backwards comparability in some parts of the ecosystem is not a priority.  In the end, I decided to just use a virtual machine for the occasional thing I needed and it worked great.

### Misc. things that annoy  me

* Atom randomly bugs out and there are visual artifacts. The tree view will go away, sometimes.
* [Occasionally, a Linux kernel will break something on me. I am not this user, but you are not alone, user](https://www.reddit.com/r/linux_gaming/comments/64gfz6/raising_awareness_xbox_360_controller_does_not/)!
* When a package is unsupported by my distro, it becomes up to me. The diversity of the distros is also a weakness. 
* Screen tearing is still a thing sometimes along with audio and video desynch on YouTube. I've heard "Wayland" might fix these problems -- so I wait patiently.

## Going to jump in? Here's some main take aways

* Make sure you know what your distribution is like and how likely you are to end up with a system that could be broken. If you can't tolerate your machine being down for a day and needing to resolve a few issues here and there, rolling release distributions are probably not for you, at least not of the Arch based variety. I have heard good things about Solus. 
* Embrace the change. Do not let yourself become restricted to something Windows-esque and instead let yourself try some new paradigms. You may just fall in love. Try a new window manager. Use your package manager a lot. Automate tasks with powerful shell scripting. 
* Be prepared for some frustrating nights. There will be problems and a learning curve to conquer. Linux is still not perfect even in 2017
* Not all your games are going to work in WINE and you will have to just accept that it is not a main goal of the Linux ecosystem.  
* Follow some forums on the web and become engrossed. There are several on the web, but  `/r/linux` and `/r/archlinux` for me in particular were helpful on Reddit in order to keep up on how things were doing. You will be happier if you are aware of what is going on.

## What's next?

Arch Linux was cool and it let me learn a lot. I think Linux in general is pretty awesome and I want to continue using it as my daily driver. I think will probably continue to do so for a while. That being said, there are some very cool distributions that are cropping up lately that are now on my radar. I like the "DIY" experience but not the breakage that comes with it some cases.  Perhaps I can find something that can meet me in the middle, but that is the joys of the Linux ecosystem, I can choose...

With the Windows Subsystem on Linux now available as well, I plan on giving that a try and seeing how much of the tools that I am using can be used there now. I have a feeling that some of the pros I have listed will become the gold standard there now, such as the NIX* tools working out of the box. Games will work a heck of a lot better there, too, I am sure.  And despite the random complaints on the Internet sometimes, I would probably get less random breakages in some cases, since there are less choices to make.

But in the end? I think I will stay where I am for now.  There is much more to learn and so much more to gain.  Compared to the pain, I think I am still way ahead.