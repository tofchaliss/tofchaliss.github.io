// Retires the service worker registered by the old Jekyll/Chirpy site.
//
// That worker served every request cache-first, so returning visitors would
// keep seeing the old site. Browsers re-check /sw.js for updates, pick up
// this version, and it then clears the old caches, unregisters itself, and
// reloads any open tabs onto the live site.
//
// Keep this file for a few months after the migration, then delete it.

self.addEventListener("install", () => self.skipWaiting());

self.addEventListener("activate", (event) => {
	event.waitUntil(
		(async () => {
			const keys = await caches.keys();
			await Promise.all(keys.map((key) => caches.delete(key)));
			await self.registration.unregister();
			const clients = await self.clients.matchAll({ type: "window" });
			for (const client of clients) {
				client.navigate(client.url);
			}
		})()
	);
});
