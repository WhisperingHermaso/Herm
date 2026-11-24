// Bird Simulator: loads fresh when online, falls back to the last copy offline.
const CACHE = 'bird-sim-v2';
const FILES = ['./', './index.html', './manifest.webmanifest', './icon-192.png',
  './parts/head.webp', './parts/torso.webp', './parts/armL.webp', './parts/armR.webp',
  './parts/thighL.webp', './parts/thighR.webp', './parts/shinL.webp', './parts/shinR.webp', './parts/character.webp'];
self.addEventListener('install', e => { e.waitUntil(caches.open(CACHE).then(c => c.addAll(FILES))); self.skipWaiting(); });
self.addEventListener('activate', e => { e.waitUntil(caches.keys().then(ks => Promise.all(ks.filter(k => k !== CACHE).map(k => caches.delete(k))))); self.clients.claim(); });
self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;
  e.respondWith(fetch(e.request).then(r => { const copy = r.clone(); caches.open(CACHE).then(c => c.put(e.request, copy)); return r; }).catch(() => caches.match(e.request)));
});
