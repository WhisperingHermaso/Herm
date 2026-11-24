# Herm

Two small phone games. **Bird Simulator** is the main one and opens from the site's main link. **Herm's Beach** lives in `crab/`.

## Put it on your phone

1. In this repo on GitHub, go to **Settings → Pages**, set the source to this branch and the root folder, and save.
2. Open the Pages link on your phone. That opens Bird Simulator. Add `crab/` to the end of the link for Herm's Beach.
3. iPhone: tap **Share → Add to Home Screen**. Android: tap the **⋮** menu → **Add to Home screen** (or **Install app**).

They open full screen from their own icons and work offline after the first visit.

---

## Bird Simulator

A ragdoll physics toy. Grab the floppy bird anywhere, drag him around and fling him. Bonks, flips, big air, trampoline bounces and spinner whacks build a chain, and the chain multiplies until he lies still.

Buttons: **Yeet!** throws him into the air, **Slow-mo** slows time, **Reset** starts over.

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
