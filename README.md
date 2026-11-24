# Herm

**Herm's Beach** is a small one-finger arcade game for your phone about a hermit crab on a beach at dusk.

## How to play

- **Hold** a finger on the screen and Herm walks toward it. Eat the kelp and shrimp the waves wash up.
- **Let go** and Herm hides in the shell. Hide when a gull's shadow lands on you and it bounces off (*CLONK!*, +30).
- **Grow**: food makes Herm bigger. When Herm outgrows the shell, hiding stops working, so walk over a bigger shell to move in. Very big shells slow you down.
- Keep the **belly** bar from running out. You have three lives.

On a computer, hold ← → (or A / D) to walk and let go to hide. P pauses.

## Files

| File | What it is |
| --- | --- |
| `game.html` | The whole game: HTML, CSS and JavaScript in one file. Edit this one. |
| `index.html` | Built from `game.html` by `./build.sh`. Adds the bits a phone needs to install it. |
| `manifest.webmanifest`, `icon.svg`, `sw.js` | Home-screen name and icon, plus offline support. |

## Put it on your phone

1. In this repo on GitHub, go to **Settings → Pages**, set the source to this branch and the root folder, and save.
2. Open the Pages link on your phone.
3. iPhone: tap **Share → Add to Home Screen**. Android: tap the **⋮** menu → **Add to Home screen** (or **Install app**).

It then opens full screen from its own icon and works offline.

---

# Bird Simulator

A ragdoll physics toy in `flop/`. Grab the floppy bird anywhere, drag him around and fling him. Bonks, flips, big air, trampoline bounces and spinner whacks build a chain, and the chain multiplies until he lies still.

Buttons: **Yeet!** throws him into the air, **Slow-mo** slows time, **Reset** starts over.

| File | What it is |
| --- | --- |
| `flop/game.html` | The game. Physics comes from Matter.js, loaded from cdnjs. |
| `flop/parts/*.webp` | The character cut into eight body parts. |
| `flop/index.html` | Built from `flop/game.html` by `./build.sh`. |

With GitHub Pages on, it lives at `<your Pages link>/flop/`.
