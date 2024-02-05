Where is Silent Hills?
=====================

This is a data/statistics project to see where the game series "Silent Hill" is after all these years.

## Backstory

Silent Hill, the horror game series, first started on the PlayStation 1 (PSX) back in 1999. It was published by Konami and developed by a group Team SIlent. Team Silent made games Silent Hill 1 all the way through Silent Hill: The Room (otherwise known as Silent Hill 4), then the group was disbanded, and several members went along different paths.

In 2014, a demo was uploaded to the PlayStation Network. It was a game titled "P.T.", and it was revealed to be a demo for an upcoming game called "Silent Hills", supposedly the grand successor to Silent Hill after a large amount of silence from Konami. It was supposed to be directed by Hideo Kojima.

After the release of Metal Gear Solid 5, Hideo Kojima left Konami and went on to form his own studio, to produce the 2019 game Death Stranding. Here it was assumed that Silent Hills was all but dead.

In October 2022, Konami announced not one, not two, but *four* new Silent Hill projects, making it almost 10 years since it's previous mainline title *Silent Hill: Downpour*.

## Goals

The goal of this project is to archive the credits from past Silent Hill titles to track who is coming and going. Many members of the original Team Silent are long gone, but some members are still very much present, such as Masahiro Ito, who is a character designer for many of the games.

Credits are compiled into CSV files for each game, which is done by (*painfully*) watching the credits and typing it out. Data is loaded into a list using [Racket](https://racket-lang.org/), and with that data we can create full traces of a person's movements between games.

Other games are included as well to track movements of various members working on other games, to help establish better stories.

The original goal of this project was to estimate whether a *Silent Hills*, the game that *"P.T."* once promised would ever come to fruition, but as of October 2022, we can see that Silent Hill is very much back at full development.

## Timeline of Games

1. *Silent Hill*, 1999, PlayStation 1 (PSX)
2. *Silent Hill 2*, 2001, PlayStation 2 (PS2)
3. *Silent Hill 3*, 2003, PS2
4. *Silent Hill 4: The Room*, 2004, PS2
5. *Silent Hill: Origins*, 2007, PlayStation Portable (PSP)
6. *Silent Hill: Homecoming*, 2008, Xbox 360/PlayStation 3/PC
7. *Silent Hill: Shattered Memories*, 2009, Nintendo Wii/PS2/PSP
8. *Silent Hill: Downpour*, 2012, PS3/X360
9. *Silent Hill HD Collection*, 2012, PS3/X360
10. *Silent Hill: Book of Memories*, 2012, PlayStation Vita (PSVita)
11. *"P.T."*, or *"Silent Hills"*, 2014, PlayStation 4
12. *Death Stranding*, 2019, PS4/Xbox One/PC
13. *Silent Hill: Ascension*, 2023, Mobile?
14. *Silent Hill: Short Message*, 2024, PS5
15. *Silent Hill 2 Remaster*, 2024, PS5/Xbox/PC(?)
16. *Silent hill f*, 2024(?), ?

## Development

Below is a description of the files.

* `data` - reserved purely for CSV files of staff credits of each game
* `SilentCore.rkt` - atomic operations for loading files and operating on data
* `WhereIs.rkt` - a program to trace the timeline of a given person
