'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "0528e68afad9137e608e702beb56435e",
"assets/AssetManifest.bin.json": "1d9c5205dcac2de1e7f6c2478587794f",
"assets/AssetManifest.json": "5d4e0ff96ee8aca840d1e2940ec31e2a",
"assets/assets/fonts/montserrat.ttf": "5e077c15f6e1d334dd4e9be62b28ac75",
"assets/assets/images/development/compose.png": "998518e6a33da6236ce76d69590e51cc",
"assets/assets/images/development/css.png": "4f62343427002846cadebf7b572aa3bd",
"assets/assets/images/development/dart.png": "702a032eddea90a75d3d0be248fc2112",
"assets/assets/images/development/firebase.png": "e0985da35de9f0c37574d14f05e8ed8d",
"assets/assets/images/development/flutter.png": "a2c21a398ece69d9d24ad12ac7bd96b6",
"assets/assets/images/development/html.png": "3768ce284d6bfa71a327027da8095365",
"assets/assets/images/development/java.png": "2f9a11dcc2e4c3b89d8f6016befa0d7e",
"assets/assets/images/development/javascript.png": "5dfc64a8540882ccfe060ea64954b977",
"assets/assets/images/development/kotlin.png": "dfc3178ad291df649d41f08cffb2ba2e",
"assets/assets/images/development/mongodb.png": "aa841ec6edf02ff0329ef5cec30d86ed",
"assets/assets/images/development/mysql.png": "1a839ef98cb45c88f29ad9cc181776f9",
"assets/assets/images/development/react.png": "5ff2a1db5d91e639ddc18bb3eb693d39",
"assets/assets/images/development/sqlite.png": "159c3a57cc635f15acf619391e7b2ea7",
"assets/assets/images/development/typescript.png": "061d3a9db12e5123a1027b63a5ca6ed0",
"assets/assets/images/english.png": "7ff5dacab96414cb75fff06a6be3064e",
"assets/assets/images/github.png": "1b9b9f71269e504156ce9d89a00f2551",
"assets/assets/images/italian.png": "6f6d09685eb03af0d9a6973b574fbbde",
"assets/assets/images/logo.png": "f5899e2d09d90e559a582c41b8d1c20d",
"assets/assets/images/myPhoto.png": "1018e45c7a26c5779c105c21ab0719ea",
"assets/assets/images/projects/compose/compose_contact.png": "0495129f56a29295cc050b42e9e8e7b3",
"assets/assets/images/projects/compose/compose_countdown.png": "0ad0df2d18982b6980afbde5861892cc",
"assets/assets/images/projects/compose/compose_darkmode.png": "eb47aa3199c47cf37d947a1558a4a07b",
"assets/assets/images/projects/compose/compose_egg.png": "8b58090bc120f1af0166f807e04209fb",
"assets/assets/images/projects/compose/compose_language.png": "ea9a29b7609049264a3e7a85d94f9fb8",
"assets/assets/images/projects/compose/compose_onboarding.png": "d2d52268a3dc2be5dba5e2c031af4f8a",
"assets/assets/images/projects/compose/compose_photopicker.png": "1f4ffcb9d23c4b70a5c63d1164347596",
"assets/assets/images/projects/compose/compose_recorder.png": "8b29638e63c9b765c21dfa0470ed2c6b",
"assets/assets/images/projects/compose/compose_scanner.png": "b380ada71f26b15a584bc03fd3241bfa",
"assets/assets/images/projects/compose/compose_speechtext.png": "65354aef703e4f7f11ffee20f49676a2",
"assets/assets/images/projects/compose/compose_stopwatch.png": "5a96034753ad00d8bc8846919a9f89f4",
"assets/assets/images/projects/flutter/flutter_inventory.png": "16b2de9532096d3cb952a7a59f1d344a",
"assets/assets/images/projects/flutter/flutter_todo.png": "d945d48739165de2e646bf63418441b7",
"assets/assets/images/projects/react/react_digital_clock.png": "04f7fedf188c37e1be67d74f6c8fca58",
"assets/assets/images/projects/react/react_password_generator.png": "cd8dd04f4f3a8e4fee54e9768a259b5e",
"assets/assets/images/projects/react/react_pwa.png": "6238741b8b590be8cabff87b34704019",
"assets/assets/images/projects/react/react_qr_code_generator.png": "46710f90189a586e146d9dc10846253a",
"assets/assets/images/projects/xml/xml_animations.png": "d1b1bba5938332cedcf5268e41f46d37",
"assets/assets/images/projects/xml/xml_dark_mode.png": "e7e3eae95e720f06f0070ac1a3a5e92f",
"assets/assets/images/projects/xml/xml_folder_creation.png": "919e7e55c758534435b97c0255a2ff35",
"assets/assets/images/projects/xml/xml_onboarding.png": "dded3d89215f77064198c5f824256c3f",
"assets/assets/images/projects/xml/xml_recorder.png": "7f6f2cd4808e02fe6b906683bf1baae2",
"assets/assets/images/projects/xml/xml_sensors.png": "65127e7259446e0c492ad9ec9d56caa8",
"assets/assets/images/projects/xml/xml_speech_to_text.png": "36b1a72d9d46189d230eb7fa5a6f6f71",
"assets/assets/images/projects/xml/xml_sql_lite.png": "9768fd62b990406dfb6ad6238fef9b6a",
"assets/assets/images/projects/xml/xml_switch_language.png": "f87f41e2f7e06fca19944ea9970a8f38",
"assets/assets/images/projects/xml/xml_toast_message.png": "34855112c0b26fb5b2b4f063a79c4f82",
"assets/assets/pdf/Nicola_De_Nicolais_CV.pdf": "44f6eca3125321556794399519b1ff2d",
"assets/FontManifest.json": "bc135047dd0fbac1c70fde28321b3764",
"assets/fonts/MaterialIcons-Regular.otf": "9d4b4936f00f2c06016e2931d4dad402",
"assets/NOTICES": "16a3b1d482b5b8b3b4544978208e3cbf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "71c73a0a4333a78bc4dc6a2b212241dc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "34893dc0e4854d3650e0309d3f810a19",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "f1f0cea7d37959ce4ad5b6f885f54ce1",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icon.ico": "8aa385abe01de263efa5bc626914d46f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "27707b59ba440febd0fe167005671348",
"/": "27707b59ba440febd0fe167005671348",
"main.dart.js": "d6994c1e65cfda972cb4b9e3965e7bfe",
"manifest.json": "41a8a67d1dfa76b3f3f05f86901efdb5",
"version.json": "9bfafc23ed57941a6a0d1ff30f7e8371"};
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
