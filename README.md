# Herm

Two small phone games. **Bird Simulator** is the main one and opens from the site's main link. **Herm's Beach** lives in `crab/`.

## Put it on your phone

1. In this repo on GitHub, go to **Settings → Pages**, set the source to this branch and the root folder, and save.
2. Open the Pages link on your phone. That opens Bird Simulator. Add `crab/` to the end of the link for Herm's Beach.
3. iPhone: tap **Share → Add to Home Screen**. Android: tap the **⋮** menu → **Add to Home screen** (or **Install app**).

They open full screen from their own icons and work offline after the first visit.

---

## Bird Simulator

A ragdoll physics game. Grab the floppy bird and fling him around, or pick a weapon from the tray and tap where to use it. Bonks, flips, big air, trampoline bounces, bullseyes and weapon hits build a chain, and the chain multiplies until he lies still.

**Levels.** Each room has a goal. Clearing it unlocks the next room and a new weapon.

| # | Room | Goal | Unlocks |
| --- | --- | --- | --- |
| 1 | Playroom | Score 1,000 points | Hammer |
| 2 | Gym | Hit him with the hammer 5 times | Punch (spring glove) |
| 3 | Warehouse | Send him 4 m high (less on short screens) | Bowling ball |
| 4 | Rooftop | Hit the bullseye 3 times | Bomb |
| 5 | Building Site | Land a 3,000 point chain | Cannon |
| 6 | Arena | Catch him in 5 explosions | Sandbox |

**Buttons.** Yeet! throws him into the air, Slow-mo slows time, Reset rebuilds the room. The top-right buttons open the level list, switch blood mode and mute the sound.

| File | What it is |
| --- | --- |
| `game.html` | The game. Physics comes from Matter.js, loaded from cdnjs. Edit this one. |
| `parts/*.webp` | The character cut into eight body parts, plus the full picture for the menu. |
| `index.html` | Built from `game.html` by `./build.sh`. Adds what a phone needs to install it. |
| `manifest.webmanifest`, `icon-*.png`, `sw.js` | Home-screen name and icon, plus offline support. |

## Herm's Beach (`crab/`)

A one-finger arcade game about a hermit crab.

- **Hold** a finger on the screen and Herm walks toward it. Eat the kelp and shrimp the waves wash up.
- **Let go** and Herm hides in the shell. Hide when a gull's shadow lands on you and it bounces off.
- **Grow**: when Herm outgrows the shell, hiding stops working, so walk over a bigger shell to move in.
- Keep the **belly** bar from running out. You have three lives.

Edit `crab/game.html`, then run `./build.sh` to rebuild `crab/index.html`.
