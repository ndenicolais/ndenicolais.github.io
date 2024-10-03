'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7bbbf250e83534cc447340bcc03b67c6",
"assets/AssetManifest.bin.json": "0808042b0a64b79403c802f0da8e7303",
"assets/AssetManifest.json": "3df5ec6f93429f9417f853313dfe9bce",
"assets/assets/images/development/androidstudio.png": "4ccd412930de4926c1ede6d3a725f579",
"assets/assets/images/development/canva.png": "0a270aee31790bc1ffb0a5dae323e5f3",
"assets/assets/images/development/css.png": "4f62343427002846cadebf7b572aa3bd",
"assets/assets/images/development/dart.png": "702a032eddea90a75d3d0be248fc2112",
"assets/assets/images/development/figma.png": "c08a45abf932b77d836e099b428cb6c1",
"assets/assets/images/development/firebase.png": "b7696fd2b2f197b3708637ec359ab37e",
"assets/assets/images/development/flutter.png": "a2c21a398ece69d9d24ad12ac7bd96b6",
"assets/assets/images/development/html.png": "3768ce284d6bfa71a327027da8095365",
"assets/assets/images/development/javascript.png": "5dfc64a8540882ccfe060ea64954b977",
"assets/assets/images/development/jetpackcompose.png": "c1e3be8d607b1bf157f062ae43722ae1",
"assets/assets/images/development/kotlin.png": "ccc21f6e92c51606aa76b74675af6743",
"assets/assets/images/development/mongodb.png": "aa841ec6edf02ff0329ef5cec30d86ed",
"assets/assets/images/development/nodejs.png": "33cf8cd4015161696ba742f1c089f7dc",
"assets/assets/images/development/react.png": "5ff2a1db5d91e639ddc18bb3eb693d39",
"assets/assets/images/development/typescript.png": "061d3a9db12e5123a1027b63a5ca6ed0",
"assets/assets/images/development/vscode.png": "a942ec8c258ec91ceb8aa2a6e78c2cbf",
"assets/assets/images/english.png": "7ff5dacab96414cb75fff06a6be3064e",
"assets/assets/images/github.png": "1b9b9f71269e504156ce9d89a00f2551",
"assets/assets/images/italian.png": "6f6d09685eb03af0d9a6973b574fbbde",
"assets/assets/images/logo.png": "6b0ccd7c97a59a1e267115a81a2a24e8",
"assets/assets/images/myPhoto.png": "dcf6f0110025ca370b87427fb8cf47ae",
"assets/assets/images/projects/compose/compose_contact.png": "942dedf2a68b18b82cf0ff62cb888659",
"assets/assets/images/projects/compose/compose_countdown.png": "b1a3c75d8f7c5db6b0019f00fbe52d22",
"assets/assets/images/projects/compose/compose_darkmode.png": "71ba389aad9b5801ea3fb493de1046d1",
"assets/assets/images/projects/compose/compose_egg.png": "81e921b6e1001432c63c7ccb0338049b",
"assets/assets/images/projects/compose/compose_language.png": "c8221d8bade7f1dcde4612c604ed5de5",
"assets/assets/images/projects/compose/compose_onboarding.png": "74b2710568be2d1282c016a005f7f56a",
"assets/assets/images/projects/compose/compose_photo.png": "3e3daf5495b0e525c76a898bb13f9abe",
"assets/assets/images/projects/compose/compose_recorder.png": "ebfaffaf887224e65c0e4a8e13f3d5be",
"assets/assets/images/projects/compose/compose_scanner.png": "55640ff196f49c0d084c725759663df3",
"assets/assets/images/projects/compose/compose_st.png": "b35d0e304fe5786b65535275d2377f2f",
"assets/assets/images/projects/compose/compose_stopwatch.png": "18240629956eec196efcf0cd47ca5174",
"assets/assets/images/projects/flutter/flutter_inventory.png": "16b2de9532096d3cb952a7a59f1d344a",
"assets/assets/images/projects/flutter/flutter_todo.png": "d945d48739165de2e646bf63418441b7",
"assets/assets/images/projects/flutter/logo_shox.png": "39d18b1bc431e074179eb5b7c370cc89",
"assets/assets/images/projects/react/react_clock.png": "f29f74aa24749ea3ba1253148965e51c",
"assets/assets/images/projects/react/react_password.png": "5f88d9eaaa06a386acf928677a133526",
"assets/assets/images/projects/react/react_pwa.png": "979faa1ced97256c7c4af5a23d13bc7c",
"assets/assets/images/projects/react/react_qr.png": "ae2d6bab7139c3f0a49044956cfb6caa",
"assets/assets/images/projects/xml/xml_animations.png": "7c3ab8d93e03adfeab4bb23fab1a5b4a",
"assets/assets/images/projects/xml/xml_darkmode.png": "12addb9b3013cdf23246bef28e2c25f5",
"assets/assets/images/projects/xml/xml_folder.png": "d702b5a99cad7f5020dbea20341fe49c",
"assets/assets/images/projects/xml/xml_language.png": "972f99e2a9ce08c82287928a98e0885a",
"assets/assets/images/projects/xml/xml_logo.png": "36b0eb9f8ca05e0c83d1f98ec8db9698",
"assets/assets/images/projects/xml/xml_onboarding.png": "c5c061615f1b026acf35cc49dc69dc32",
"assets/assets/images/projects/xml/xml_recorder.png": "41e4e2aaabca422912b8403501c32c89",
"assets/assets/images/projects/xml/xml_sensors.png": "51cc8d10a8151c641fd773863f0db046",
"assets/assets/images/projects/xml/xml_sqlite.png": "7780db8b6281192e789a90e017e5bcdc",
"assets/assets/images/projects/xml/xml_stt.png": "5bf622bce231816eb67d4e9617d8c63d",
"assets/assets/images/projects/xml/xml_toast.png": "d8e7829f52088feb996b3667061edb67",
"assets/FontManifest.json": "d1cc5207ee8af9af6af5f788e87cb374",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "ce5f6e95fb294ec768dae034b1c623d4",
"assets/packages/ming_cute_icons/lib/fonts/MingCute.ttf": "aaf633dc28c3ef7fea5ac9eaed262611",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "ca700ea66269d2a6b47c90c955d34f80",
"icons/android-icon-144x144.png": "a78f2b2559f75fdecf7a392e16d27d80",
"icons/android-icon-192x192.png": "6a82829621b5aaad6eb19e8d44776b72",
"icons/android-icon-36x36.png": "19047ccf1e6e361a0e18dd0cec8e1d18",
"icons/android-icon-48x48.png": "d3a32d5492dccd35f5ed91c7aa405bb1",
"icons/android-icon-72x72.png": "bdc08c84ed8061aa26c29991b0537ddf",
"icons/android-icon-96x96.png": "252ee43bc844d4fb66aae963a35fdd1a",
"icons/apple-icon-114x114.png": "7aea2f6faf7dd619d6dd261416daf403",
"icons/apple-icon-120x120.png": "1fc864c198fb514663d991d73a7fd3e7",
"icons/apple-icon-144x144.png": "a78f2b2559f75fdecf7a392e16d27d80",
"icons/apple-icon-152x152.png": "2107ca82ec64a40513079d96edda9f27",
"icons/apple-icon-180x180.png": "2855a715f8d1881231f5c8bf3a81c6a1",
"icons/apple-icon-57x57.png": "0c206189eece55ebeb4680bd7787af1a",
"icons/apple-icon-60x60.png": "825f3e30b27d2412c8d87577ebd2ccf2",
"icons/apple-icon-72x72.png": "bdc08c84ed8061aa26c29991b0537ddf",
"icons/apple-icon-76x76.png": "e3801e3ae6a57686d3f5bb3a82861fea",
"icons/apple-icon-precomposed.png": "ca59b455f1d8c5c528adb858d827239d",
"icons/apple-icon.png": "ca59b455f1d8c5c528adb858d827239d",
"icons/favicon-16x16.png": "0fa9e1729ca145e20251e63e5a58bd98",
"icons/favicon-32x32.png": "b2d1b40a384f3badf11f0ca20b235b59",
"icons/favicon-96x96.png": "e6634e78909d22917fee103a08700850",
"icons/favicon.ico": "09d099098998891994136d9c6c725d11",
"icons/ms-icon-144x144.png": "a78f2b2559f75fdecf7a392e16d27d80",
"icons/ms-icon-150x150.png": "96391bfb903225d326549fe438799290",
"icons/ms-icon-310x310.png": "0e51354ba2fa6b7de1e9e0a93494ea15",
"icons/ms-icon-70x70.png": "95dbbb015a314ceec8b24538a9301756",
"index.html": "233c45406f5ada114d612ac51c992b19",
"/": "233c45406f5ada114d612ac51c992b19",
"main.dart.js": "a742fe3015f8aedd543fee92a648432e",
"manifest.json": "92b448bd53e36f35cf23519fe0fbc3ac",
"version.json": "7346f3efb16e5c41d332f02331cb12f5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
