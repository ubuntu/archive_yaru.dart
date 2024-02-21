'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/favicon-96.png": "39e83e300bc6e087ae1be5e7d5625852",
"icons/favicon-16.png": "f2783d1367173e49df10f762ab96debd",
"icons/favicon-48.png": "808dd47552a33e3591d0214d30fc26bd",
"icons/icon-maskable.svg": "36aa80fd062435eff231bec01a96ccc8",
"icons/favicon-192.png": "73f9b6568f526461868bc16647bd7ab7",
"icons/favicon-32.png": "ed3274413761a4c4eb01ab72a3dea4c2",
"icons/icon.svg": "8c8fff929f551cd574284cda79f7f071",
"version.json": "f723cddf0cc85cd9f7fadc7e039ae076",
"manifest.json": "bd4c8a9c5a3cec95de103c42727e2e9c",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"index.html": "1c21f46898bf2620c822a088a8425491",
"/": "1c21f46898bf2620c822a088a8425491",
"favicon.ico": "6d583f851f06e8cee4614abbda9fa6aa",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"main.dart.js": "663c96ee6dc30887b1acd8e46b6c2506",
"assets/packages/yaru/src/text/fonts/Ubuntu-RI.ttf": "6f1f6aa0bc3920f8eccbe06fdc883ada",
"assets/packages/yaru/src/text/fonts/Ubuntu-L.ttf": "8752cc329a4ba278de1fbe87848f64f0",
"assets/packages/yaru/src/text/fonts/Ubuntu-M.ttf": "d22dd270cff85396469ca949121abc10",
"assets/packages/yaru/src/text/fonts/Ubuntu-BI.ttf": "9eac57f171903e63575285b864a03ac8",
"assets/packages/yaru/src/text/fonts/Ubuntu-R.ttf": "29b1464e2d39f94775515968be952cb4",
"assets/packages/yaru/src/text/fonts/Ubuntu-MI.ttf": "e8d536491885e9c071e3ee4803d951d2",
"assets/packages/yaru/src/text/fonts/Ubuntu-B.ttf": "c33c9da914508707cc7d4453239176a5",
"assets/packages/yaru/src/text/fonts/Ubuntu-LI.ttf": "dff2c7f7e103ee2516e9c993b62453f3",
"assets/packages/yaru_icons/assets/yaru_icons.otf": "0b01b4078f598eefe916ebe188a77956",
"assets/packages/handy_window/assets/handy-window-dark.css": "212d71b05065406d3c6c72c059a4ed9d",
"assets/packages/handy_window/assets/handy-window.css": "135b89011bc9f52823260e9da2b0c31d",
"assets/AssetManifest.bin": "14e15bbf0816e70f8e6f51a44ad1c6ff",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.json": "5012f82d26641d71bb0db565f890a376",
"assets/FontManifest.json": "304188121767981346b495c72d233754",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/NOTICES": "050c51ea2bd77d569f2f4909b752a8e9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
