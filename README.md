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

**NOTE:** The default is that files will not be scheduled in development so that you can preview your output files, you can change this in the configuration below.

## Configuration

There are two main configuration options

```
plugins:
	scheduling:
		# Schedule all documents with a date in the future by default, default: true.
		defaultScheduling: true

		# Schedule files in development environment, default: false.
		devScheduling: false
```

## History
You can discover the history inside the `History.md` file



## License
This plugin is made ["public domain"](http://en.wikipedia.org/wiki/Public_domain) using the [Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/), as such before you publish your plugin you should place your desired license here and within the `LICENSE.md` file.