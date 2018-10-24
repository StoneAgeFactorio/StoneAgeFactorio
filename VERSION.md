# 0.0.2 (alpha 2) (2018-10-24)

Major
* The endgoal of the Stone Age is now to make an iron axe, rather than a copper
  axe. Typically the first thing I'd use a copper axe for was making an iron
  axe, so that didn't make much sense. Instead, you now need copper to make a
  copper hammer (see below).
* Achievements have been added! For now there's two: Conqueror of the Stone Age
  and Warrior of the Stone Age. I'll leave you to explore how to get them.
* The spawning of clay and sand patches has been overhauled: they now appear
  clumped together rather than spread out throughout the starting area. The
  graphics of the patches have been tinted so that they stand out clearly: no
  more looking for "special" sand patches in the desert.
* Hammering has been added as a mechanic. Smelting magnetite flakes produces an
  iron bloom that has to be hammered on an anvil before turning into crude iron.
  To hammer a bloom, place it in an anvil, hover over the anvil, and press "H".
  The key for hammering can be changed through settings.
* Digging has been added. If you have a stone shovel in your hand and you press
  "Z" for "drop item" (can be changed in settings), a mixing pit is dug at the
  location your hand was over (provided it is within your range).
* The water for making clay now has to be hand-carried in containers (the mixing
  pit doesn't have a fluid connection anymore). The containers don't stack well,
  so you can't craft a ton of containers and get it all done at once. There's a
  wood container, which you'll have to use at first, and a clay container that
  holds more water.
* Expensive recipe mode is now supported. If you love the grind, try it!

Minor
* The code for updating the world after a tool switch has been optimized to
  prevent lag (mostly).
* The item descriptions have been changed to explain the uses of each item in
  more detail.
* The items have been resorted into four rows, based on where they fit in a
  typical playthrough.
* Fixed a bug where a player with a wood stick could explore a new chunk and get
  raw wood from trees rather than sticks.
* Fixed a bug where a player with a wood stick could get raw wood from trees,
  rather than sticks, after saving and reloading the game.
* Burner miners and inserters, boilers, and furnaces can now burn any leftover
  charcoal you have at the end of your playthrough.
* You can now mine vanilla stone with a stone axe, in case you have time on your
  hands and want to get a head start on making furnaces.
* A custom graphic for wood pipes has been added, courtesy of
  [darkfrei](https://forums.factorio.com/viewtopic.php?f=15&t=51567&p=382776)
  over at Factorio Forums.

Tweaks
* The yield of the charcoal pile and the efficiency and speed of the kiln have
  been carefully tweaked so that you need at least two batches of charcoal for
  a typical playthrough, three for expensive recipe mode.
* The durability of stone tools has been increased so they don't wear out even
  when playing in expensive mode, provided you're careful about what you mine.
* The yield of vines from trees has been increased, since you need a ton.
* The probability of rocks breaking during knapping has been decreased, because
  watching the same craft over and over gets boring. For the same reason, the
  number of knapped rocks needed for all recipes has been lowered.
* The smelting ratio of ore to crude metal has been changed from 2:1 to 1:1 to
  make it easier to see how much you need to mine. The amounts have been
  increased to compensate.

Known issues
* The wood reservoir and mixing pit aren't supposed to require fuel, but
  Factorio doesn't currently support unpowered buildings.
  [This will be fixed in 0.17](https://forums.factorio.com/viewtopic.php?f=34&t=61239)

# 0.0.1 (alpha 1) (2018-09-15)

Initial content implemented.
* English and Dutch translations present.
* Using placeholder graphics and sounds.
* Known issue: popup when mining vanilla ore with overriden yield.
  [Will be fixed in 0.17](https://forums.factorio.com/viewtopic.php?f=25&t=62285).
