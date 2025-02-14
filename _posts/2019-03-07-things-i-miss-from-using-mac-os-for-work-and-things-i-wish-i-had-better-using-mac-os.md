---
layout: post
comments: true
title: Swapping from macOS and Linux, work to home... things I miss from each platform
categories:
- blog
---

I work as a Software Developer doing mostly front-end work but I do some back-end work as well. Where I work right now, we mostly develop using Macbook.  Up until recently, there were a few people using some Linux machines to get their work done but the standard issue machine is a Macbook. Even if I could swap to something else, I wouldn't and here's why:

1. I want to be on the same platform as my peers so when there is a problem I can receive help in the best way and give them the best help as well.
2. Development tools are more or less platform agnostic but rarely is anything free. If we were split 50/50, that would be one thing. But being one of the only outliers? That's painful
3. Hardware and IT support is going to be a lot better with a standard stock macOS install
4. Macbook hardware has bad support for it unless you are going for older hardware -- and that's just a no no when you are trying to make the make use of everything you have. 

That being said,  it's not like I like macOS. Even though [some people](https://www.google.com/search?q=macos+bcoming+more+unstable&oq=macos+bcoming+more+unstable&aqs=chrome..69i57.2591j0j7&sourceid=chrome&ie=UTF-8) are reporting software quality problems more and more (and I have noticed some things) there are a lot of things I like about the macOS environment. I figured I'd name a few here and hope that by putting it down, I even might be able to improve my workspace in both.

# Things I have in my Arch Linux setup I wish I had there

## Tiling Window Manager

I have a tiling window manager here. I don't have to use a clunky terminal with it's own keybindings like iTerm on macOS.  I use i3 and I won't try and sell you on the benefits, but I will say is I never have to reach for my mouse to resize random windows and everything is just fullscreen and driven by a keyboard by default. For some non-work workflows, this is a bit clunky (looking at you -- Steam) so I have GNOME for some other stuff. It's not my favourite but for getting work done, I can't beat the i3 setup.

![](/assets/8f56a3de-7eee-4d9f-b7d9-7ee875cab677/tiling.png)

[There's a nice guide for getting started here on that](https://www.youtube.com/watch?v=j1I63wGcvU4). 

## My software just upgrades without much trouble

I run a Pacman upgrade every once in a while and then reboot when I need to. Nothing nags me. Nothing is in the way of trying to prevent me from doing what I need to. macOS has `brew` and the AppStore but it's not enough. There is a bunch of stuff that just does not work and hangs. [I was a victim of something like this earlier.](https://github.com/Homebrew/homebrew-core/issues/23441) And there are more. `brew` is also moving towards being a binary package manager where it can. This is not so bad, but this can be a real hassle sometimes. For example, consider [the time I had to recompile something w/ SSLv3 for something](http://vaughanhilts.me/blog/2017/02/06/openssl-with-sslv3-on-arch-linux-for-dot-net-core.html) I had to support, Arch made this a joke to do but macOS... well that would have been an ordeal. 

`brew` loves to choke sometimes as well on random things. `pacman`, well I've had issues but you can usually find the solutions on the front page since they're expected. 

## Native Docker

Holy crap. This is such a big deal and I didn't even realize why until I really figured it out. [People have been complaining about it for a bit](https://www.reddit.com/r/docker/comments/7b0g4v/docker_for_mac_speed_on_high_sierra/) but until I tried using it on macOS for other stuff, I didn't realize what a difference there was. That combined with the fact that I can poke things inside of Linux land without going through a ton of hoops. That's a miracle. I get performance without running on top of a giant hypervisor that's sluggish and clunky. 

That's not to say it's unusable -- but when I learned Docker from scratch, I did it on the Linux host for a reason. There was no competition. 

## Nothing gets in my way

No iCloud pop-ups. No notifications to reboot. No jarring software prompts. No force Windows Updates. I update on the same schedule weekly, on my own time and I run it manually. If there is something urgent, I do it again. I do my server @ the same time and control the schedule so I can control downtime as needed.

## I can use the same tools to adminster my server as a workstation

This is self explanatory. I have a home server and I love being able to `ssh` and use all the things I am familiar with to modify it. macOS has a ton of these tools as well but often they don't work quite the same.

## Being able to choose  when to adopt new things 

USB-C is awesome. 

I am also not ready to move everything over to it. I think Apple thinks I'm ready, though. Considering they removed my HDMI. This has been covered a ton by the press but seriously: it's annoying.

Suffice to say, I have some older hardware and I don't mind. It's mature and most things are working now.

# Things I miss coming home from my macOS machine

## Performance

There's not inherently slow about Linux. In a lot of stuff, it's even faster and works better on a _raw level_... for example if we're talking [Vulkan support, there's no contest.](https://www.phoronix.com/scan.php?page=article&item=dota2-mac-vulkan&num=2) And for other stuff like some parallel computing, some of the schedulers are on another level. Or some of the machine learning stuff going on. However, general _compute performance_ is slower. i3 is just laggier sometimes on a similar specced machine. I get random stalls sometimes as things hiccup. The desktop experience just is not as polished. It's not like things are unusable -- not by a kilometer. However, things are just generally more sluggish. 

## Software Support for "some mainstream things"

Office? Google Suite has replaced a lot of the need for that stuff for me. Typing documents is a basic need for me and I'm not strapped for having a ton formatting options.

Photoshop?

The experience is better here. This is still a sore spot. I wish I had these. I might have to get a VM passthrough going or something to get better results over here in Linux land. I'm using Pinta for basic editing over here and I've tried GIMP but it's not the same. Once you've learned Photoshop skills, it's pretty hard to retrain for something as simple as "OS loyalty". I am sure the job can get done in other spots but I don't know want to relearn when it's not the primary objective of my workstation.

## Hardware Support

People keep saying that Linux desktop is plug and play. We either live in a different world or some of them are more optimistic than I. I've plugged a lot of things in and they don't work as well as I would like. I still can't find a nice way to adjust scrolling speed in Linux for Chrome and other apps to be faster to my liking. `xpad` and `xboxdrv` often have competing goals and clobber each other. My options for mice and keyboards are a bit more limited; I pick according to what is going to work in my  system.

##Searching for a problem? You can narrow it down -- it's a macOS thing probably

Running an Arch Linux distro + a ton of other stuff that is non-standard, I get a shit ton of problems I have to sort out myself. Origin in WINE not running? It does not play nice with tiling window managers. Switch to GNOME for now. [Steam hanging for some random reason?](http://vaughanhilts.me/blog/2018/02/16/steam-hanging-on-clicking-login-wine-staging.html) Break out the debugger.

When looking for macOS stuff, there's usually only a handful of hits that apply to most systems. No guesswork for involved. As I get better at debugging, I can pinpoint problems faster but there's less annoyance in this case. 
