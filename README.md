# Cordova Plugin External Links

_A Cordova plugin that opens all links with **"utm\_"** in the URL and those with a **"\_blank"** target through the system browser, so that they do not take over the web view of the app (**iOS & Android only**)._

This is a fork [@slaptoast](https://github.com/slaptoast/)'s repo [cordova-plugin-openblank](https://github.com/slaptoast/cordova-plugin-openblank).
I've only edited it so that it is able to detect social media links along with ad links through the "utm_" string in the URL.

---

**@slaptoast's description**
Quick and dirty solution to the issue of opening links from iframes into an inapp browser instead of going back into the app. Only support for iOS and Android, and it's specifically set up to capture ad links from inline google ad placements. If you are going to use this you'll need to modify the android file to check for something in the url, since it has no way of testing the target of the link. Not an issue in iOS though, you can check the target.

