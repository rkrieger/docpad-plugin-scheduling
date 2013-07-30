# Scheduling Plugin for [DocPad](http://docpad.org)
Schedules content with a date in the future so that it is not published until that date.

## Install

```
npm install --save docpad-plugin-scheduling
```

## Usage

Once installed the default is that scheduling is enabled for all documents with a ```date``` in the future. You can override this in your document's meta by setting.

```
---
date: '01 Jan 2259 00:00'
scheduled: false
---
```

This document will be rendered out even though it's date is in the future.

If your ```defaultScheduling``` configuration setting is ```false``` below, you can use the same meta keyword to specify that a particular file should be scheduled, i.e.

```
---
date: '01 Jan 2259 00:00'
scheduled: true
---
```

The document will not be rendered until after midnight on the 1st January 2259.

## Configuration

There are two main configuration options

```
plugins:
	scheduling:
		# Schedule all documents with a date in the future by default, default: true.
		defaultScheduling: true

		# Schedule files in development environment, default: true.
		devScheduling: true
```

### Automatic scheduling on your deployed server

This plugin is probably of most use when used in combination with DocPad's ```regenerateEvery``` setting, allowing you to schedule your content and have it published automatically on the next regeneration after the document's date.

## History
You can discover the history inside the `History.md` file



## License
This plugin is made ["public domain"](http://en.wikipedia.org/wiki/Public_domain) using the [Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/), as such before you publish your plugin you should place your desired license here and within the `LICENSE.md` file.