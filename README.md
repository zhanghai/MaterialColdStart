# MaterialColdStart

Utilize the window background during cold start time (the time between user launches your app and `Activity.onCreate()` is called) to make your app look faster.

This project comes with some templates for Material Designed apps, but you can also roll your own if you wish.

## Preview

Blank cold start (Glitch on status bar and appbar)
v.s.
Material cold start (Preserves visual consistency)

![Blank cold start](preview/blank_cold_start.gif)
![Material cold start](preview/material_cold_start.gif)

## Inspiration

This project was inspired by the pro-tip [Use cold start time effectively with a branded launch theme — Pro-tip by +Ian Lake](https://plus.google.com/+AndroidDevelopers/posts/Z1Wwainpjhd).

But instead of using a short transient product logo as preview, I want to use a background with an `AppBar` on it, just like the old days with framework-managed `ActionBar`, which gives user the illusion of a quicker start up and ensures visual consistency.

This project has been around in my mind for several months, until I found my way to generate drawables with templates.

## Implementation

This project generates nine-patch drawables for use as `android:windowBackground`.

### Why nine-patch?

Only static drawables can be loaded by framework as preview, and all other drawables will only retain aspect ratio when width/height is set. So we need to use nine-patch.

### How to generate nine-patch?

However, nine-patches need to be bitmaps, but we have various dimension sizes changing with configuration, and we still have to retain the one-pixel border while scaling up the content area.

I don't want to keep a separate file for each combination of configuration (which can be 20 if you support tablet), but instead use a single template for nine-patch generation. After a lot of (painful) trial-and-error with `XSLT` and `sed`, I suddenly found the good old `bash` (which is string-oriented) a viable solution for this problem.

The solution, a "new" format called `shsvg` (Shell SVG), is implemented as in [DreaminginCodeZH/AndroidSVGScripts](https://github.com/DreaminginCodeZH/AndroidSVGScripts) and used by this project.

## Usage

### TODO

### Prebuilt drawables
