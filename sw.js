
const CACHE = 'xrossstars-img-v1';
self.addEventListener('install', e => self.skipWaiting());
self.addEventListener('activate', e => e.waitUntil(self.clients.claim()));
self.addEventListener('fetch', event => {
  const req = event.request;
  if (req.destination === 'image') {
    event.respondWith((async () => {
      const cache = await caches.open(CACHE);
      const cached = await cache.match(req);
      const fetchPromise = fetch(req).then(res => { if (res.ok) cache.put(req, res.clone()); return res; }).catch(() => cached);
      return cached || fetchPromise;
    })());
  }
});
