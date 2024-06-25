'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "3d76919590f5f03ee91dd91a2241916e",
"index.html": "af1cabf790fdc9e4a900dc5ea00f8fd1",
"/": "af1cabf790fdc9e4a900dc5ea00f8fd1",
"images/logo-dark.png": "eb3fa2042668b84307897fdc58a61ed2",
"images/logo%20copy.png": "dfc556c13753857f688efe36256d3172",
"images/Remote%20Pilot%20Study%20Guide.png": "853ed34d406730a8c05ef17a9ee6af4a",
"images/faadronezone-access.faa.gov.jpg": "62bd2b1593cc5b90d7ccaea3bb0afe60",
"images/home.jpg": "62908e17f60aee83230240b1d157128f",
"images/Airman%20Certification%20Standards.png": "c91d5ded2211ee8a3729459af29a7730",
"images/pilot.png": "29b767adc9ebdda8245058d9bb42f5a6",
"images/logo-white.png": "34b228773b96406469d5c367926e2318",
"images/slide_1.png": "5ad5127eca3c2baeced7ff7be96a011f",
"images/slide_3.png": "aaa24225e3ce29fd76e003aaef777250",
"images/slide_2.png": "774251e8599530186ed1ea598957212e",
"images/logo.png": "dfc556c13753857f688efe36256d3172",
"images/passed.png": "5816f595584b48f500bfc7433bac330c",
"images/signup.png": "47ba09fbec045ea3d72829d9d1c448c1",
"images/drone.png": "11e3f1935197af6c0ba77d587184209a",
"images/slide_4.png": "920b67797d77f4e8f527d376fde87ef5",
"images/www.faa.gov.png": "52a322c5f937ed9f7f93e66b35a5c2b8",
"images/logo-dark%20copy.png": "eb3fa2042668b84307897fdc58a61ed2",
"images/welcome.png": "420cd57daa29813715293db03e03b059",
"images/bg.png": "16943f9dc0b28f7396a4af09cbd8f9f3",
"main.dart.js": "8bbf5644b718adc3670377af81644e6c",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "4205d43567e3d2349daeafa48de15201",
"icons/Icon-192.png": "63e22430700a563795e3e5fa35bc01a2",
"icons/Icon-maskable-192.png": "63e22430700a563795e3e5fa35bc01a2",
"icons/Icon-maskable-512.png": "58bb11dcd80bb05330cf594e2a956f43",
"icons/Icon-512.png": "58bb11dcd80bb05330cf594e2a956f43",
"manifest.json": "a8ef4c4860bf8827a559348e58f05936",
"assets/AssetManifest.json": "c71cb481be2c725bb8eb17a8b247cca2",
"assets/NOTICES": "54ee74db79199fd8ec5e4c150d8b1d55",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "f9ff5bcca979ab7306a5886ddd954287",
"assets/fonts/MaterialIcons-Regular.otf": "cf383fb841fc1a0df8dfcac2aeca0dbb",
"assets/assets/images/logo-dark.png": "eb3fa2042668b84307897fdc58a61ed2",
"assets/assets/images/faadronezone-access.faa.gov.jpg": "62bd2b1593cc5b90d7ccaea3bb0afe60",
"assets/assets/images/home.jpg": "62908e17f60aee83230240b1d157128f",
"assets/assets/images/pilot.png": "29b767adc9ebdda8245058d9bb42f5a6",
"assets/assets/images/logo-white.png": "34b228773b96406469d5c367926e2318",
"assets/assets/images/slide_1.png": "5ad5127eca3c2baeced7ff7be96a011f",
"assets/assets/images/slide_3.png": "aaa24225e3ce29fd76e003aaef777250",
"assets/assets/images/slide_2.png": "774251e8599530186ed1ea598957212e",
"assets/assets/images/logo.png": "dfc556c13753857f688efe36256d3172",
"assets/assets/images/passed.png": "5816f595584b48f500bfc7433bac330c",
"assets/assets/images/signup.png": "47ba09fbec045ea3d72829d9d1c448c1",
"assets/assets/images/drone.png": "11e3f1935197af6c0ba77d587184209a",
"assets/assets/images/slide_4.png": "920b67797d77f4e8f527d376fde87ef5",
"assets/assets/images/www.faa.gov.png": "52a322c5f937ed9f7f93e66b35a5c2b8",
"assets/assets/images/Remote%2520Pilot%2520Study%2520Guide.png": "853ed34d406730a8c05ef17a9ee6af4a",
"assets/assets/images/welcome.png": "420cd57daa29813715293db03e03b059",
"assets/assets/images/bg.png": "16943f9dc0b28f7396a4af09cbd8f9f3",
"assets/assets/images/Airman%2520Certification%2520Standards.png": "c91d5ded2211ee8a3729459af29a7730",
"assets/assets/figures/Fig28.jpg": "0126896870d3122fa84459bb5a4992e8",
"assets/assets/figures/Fig14.jpg": "44de41b3386bcfe14c923c2bc081577e",
"assets/assets/figures/Fig6.jpg": "d73410226af763b779515fdf0cda9a62",
"assets/assets/figures/Fig7.jpg": "5a355115bd43fb27b26160e6c1e0b448",
"assets/assets/figures/Fig15.jpg": "cbc1a975b61cf50d990c53bb27b23ad4",
"assets/assets/figures/Fig29.jpg": "fa2c6591196121da27097cc44734122b",
"assets/assets/figures/Fig17.jpg": "415128f1934b5484f307389dddee23cf",
"assets/assets/figures/Fig5.jpg": "bc5c2460a60cd5516605a04273ab696a",
"assets/assets/figures/Fig4.jpg": "0f9055e38ece4da177c67b7d53860bd2",
"assets/assets/figures/Fig16.jpg": "13b94d55cf694d31b6fd80351d1aa3ed",
"assets/assets/figures/Fig12.jpg": "8f98f1747cc758e7d5d932863e7034e1",
"assets/assets/figures/Fig1.jpg": "6291b05fa8c4e1faef4a60107aa5e493",
"assets/assets/figures/Fig13.jpg": "b24ea1717386d41a73267a5427e5dd64",
"assets/assets/figures/Fig11.jpg": "351b0c1544a42f2df06a2487231a6289",
"assets/assets/figures/Fig39.jpg": "422e3861ff39bbd4772444ec3dba53b2",
"assets/assets/figures/Fig3.jpg": "3a501661549f24e909f8fa3390e57d07",
"assets/assets/figures/Fig2.jpg": "c78aec972b3036c7d2f035381d8c34a7",
"assets/assets/figures/Fig38.jpg": "35d5a3d288887d30a27eaed119aeb9db",
"assets/assets/figures/Fig10.jpg": "51081cd62ef0dbf9456b2fc9d6874b8d",
"assets/assets/figures/Fig77.jpg": "a20d0157f54a6fc8aceba35c46306ab2",
"assets/assets/figures/Fig63.jpg": "a2bf37250503f10cc3a5a493d6aa5dad",
"assets/assets/figures/Fig62.jpg": "6bb5ef5d148c0da1ecd0d6546e06735a",
"assets/assets/figures/Fig76.jpg": "e8caa4fd0fae27004eb5e57f8a5ef434",
"assets/assets/figures/Fig48.jpg": "304066a3f33d6a188b908e38e6f21211",
"assets/assets/figures/Fig60.jpg": "d05085637aa095f2477b9be6a665eae6",
"assets/assets/figures/Fig74.jpg": "a8e6b79f1a9d01295de4f7fb46c95882",
"assets/assets/figures/Fig75.jpg": "b474afce52f053a63e278da3c39f0b08",
"assets/assets/figures/Fig61.jpg": "4912bb5acd62c04b143f2a601a4ee1a8",
"assets/assets/figures/Fig49.jpg": "713c70a9af6645f652fda144e18d680e",
"assets/assets/figures/Fig65.jpg": "913319c7c1326317aded57f506548b6c",
"assets/assets/figures/Fig71.jpg": "778ef172a6a7bc45ceb8fe5c8d809f4a",
"assets/assets/figures/Fig59.jpg": "c31c31df366ea00ac917005f0262f9c9",
"assets/assets/figures/Fig58.jpg": "372971584630dc9274173425c509ad4a",
"assets/assets/figures/Fig70.jpg": "54298752e7ad2d515f8511b105f191b5",
"assets/assets/figures/Fig64.jpg": "e299835f768da39238926fc394beabdb",
"assets/assets/figures/Fig72.jpg": "e19fe7390ad4225cb92fb9d7946d0d4b",
"assets/assets/figures/Fig66.jpg": "e8b507b75bf87322a4ee774cd3534bb2",
"assets/assets/figures/Fig67.jpg": "64de9314318a0e76d1dc8530b8caa6eb",
"assets/assets/figures/Fig73.jpg": "41e1e6f63decde7fcec4eedea15ad891",
"assets/assets/figures/Fig81.jpg": "27fa6865cb4548033555ee2b06ba2b94",
"assets/assets/figures/Fig56.jpg": "89c1a0ad1c037f9821f2563e11a0dd2c",
"assets/assets/figures/Fig42.jpg": "f911820bd4a29aa7223063dc32a26623",
"assets/assets/figures/Fig43.jpg": "f0924b877dcbecaaddc4a0dd9914a822",
"assets/assets/figures/Fig57.jpg": "e8b1d895e71ae83c8fc01fa4dc308f34",
"assets/assets/figures/Fig80.jpg": "8f7d84f453826480e953bbdf12c577cd",
"assets/assets/figures/Fig82.jpg": "515e2b98e6297bd09b20fa410e3e83e4",
"assets/assets/figures/Fig69.jpg": "9279532eaf95206f08f25a477ed20784",
"assets/assets/figures/Fig41.jpg": "bef60eb6b57417c59be32fbfda934741",
"assets/assets/figures/Fig55.jpg": "75e8fca69ae908f69c88240ac6616415",
"assets/assets/figures/Fig54.jpg": "6d3a19f7224ebb09d62ecbd57d2600c7",
"assets/assets/figures/Fig40.jpg": "8d49b371ca12f090218b8d43b8aeb82b",
"assets/assets/figures/Fig68.jpg": "34e52ef25c3d23ab0d88b68ada87c1b5",
"assets/assets/figures/Fig44.jpg": "30215b4cf175bbab6a44091afafd5251",
"assets/assets/figures/Fig50.jpg": "cca0cdf0c7d8c557ccd81fbc15fadb54",
"assets/assets/figures/Fig78.jpg": "a561b96901a67b93ad0e06453036625d",
"assets/assets/figures/Fig79.jpg": "6e2bc935d3dbb2d959e229d0555a118a",
"assets/assets/figures/Fig51.jpg": "d48dcd36870b738a5e0bc08bfd7857d3",
"assets/assets/figures/Fig45.jpg": "881b1d24f79eb3c14d73f41aceb08dde",
"assets/assets/figures/Fig53.jpg": "3866dba920a8358c833ad6795ddb8164",
"assets/assets/figures/Fig47.jpg": "36d7454600d331a30912446bd6d00136",
"assets/assets/figures/Fig46.jpg": "4f2363835f0b24830928cd641ff6ecaa",
"assets/assets/figures/Fig52.jpg": "4b5690e077c36b0afa9b10e6201eb6a1",
"assets/assets/figures/Fig35.jpg": "17c5216640857b63b416409ad6c368c4",
"assets/assets/figures/Fig21.jpg": "d9753e8e2dd28ed7552a8de0712d9579",
"assets/assets/figures/Fig34.jpg": "131fca7f5b7c8754e53212988a510906",
"assets/assets/figures/Fig22.jpg": "c235d0a3c75b082f82bf0645a46caf4a",
"assets/assets/figures/Fig36.jpg": "f454fd899f6d7331a02ffef1ecfd1c7f",
"assets/assets/figures/Fig37.jpg": "5ec4ab0155fa75c9e0ffd2eebc58f18c",
"assets/assets/figures/Fig23.jpg": "935a9d80587ab6480aaaef1614f0a80c",
"assets/assets/figures/Fig27.jpg": "67a892ff8948db68d4805141a44b6465",
"assets/assets/figures/Fig33.jpg": "fcc57a8b67bb4ec91892a5b586f273d2",
"assets/assets/figures/Fig9.jpg": "d8803df835f68a6499ab23937efddf91",
"assets/assets/figures/Fig8.jpg": "d95913cb3dd55643838429bb5d3986eb",
"assets/assets/figures/Fig32.jpg": "5b80d5bc25dc6e7874f2e70ed930f0a0",
"assets/assets/figures/Fig26.jpg": "41af3acd603bbc1aa9ad09ff0f500a9b",
"assets/assets/figures/Fig30.jpg": "81ff9fe18877f1aab1d18f205611d985",
"assets/assets/figures/Fig24.jpg": "126a7715f895c704477150d28df93872",
"assets/assets/figures/Fig18.jpg": "e7e5d7aa7a429a7df8423dd0be12c2f6",
"assets/assets/figures/Fig19.jpg": "01f75d6efce191abf0cbecfceb75e822",
"assets/assets/figures/Fig25.jpg": "fe4c13f83ceeb5d12656361d95ad0cc6",
"assets/assets/figures/Fig31.jpg": "587b2cdc56b9ec95893ebed9d8afff58",
"assets/assets/icons/icon.png": "38e24d617284937fa673c768c69bcf16",
"assets/assets/icons/Untitled-5.png": "9199b25a049bcbfbcbf4bba8e6f2e606",
"assets/assets/icons/ar.svg": "cb91e87b8391c089c19ab1253dfc099b",
"assets/assets/icons/bg.svg": "e5e255bd52dd5ad215758a87bee748c9",
"assets/assets/icons/logo.png": "ec178895d37fd655893fd45235151391",
"assets/assets/icons/linkedin.png": "1df3a3449ae046b9754318d373d5bc84",
"assets/assets/icons/clock.png": "94ac9bff8a023e45a71e702d5c9fd4b5",
"assets/assets/icons/clock.svg": "9606b7baca3c607cdba51eb8fa313c8f",
"assets/assets/icons/google.png": "c6e161cc93bb67ed026d2bd28f12cf0e",
"assets/assets/icons/facebook.png": "bcbf93430e181b9aaa34433afdaf6c85",
"assets/assets/icons/bg.png": "16943f9dc0b28f7396a4af09cbd8f9f3",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
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
