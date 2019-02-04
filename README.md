# cordova-plugin-ios-finite-task
iOS Only: requests up to 3 minutes of processing time so a task can run after app leaves foreground

THIS IS NOT MAINTAINED! It's published so Cordova doesn't complain about it not being published. Use at your own peril.

Totally cribbed from Lee Crossley's implementation (http://phonegap-plugins.com/plugins/leecrossley/cordova-plugin-background-task), modified by pasting in Apple's newer code for requesting time for a finite duration task. Detailed use instructions are at Apple's developer portal
https://developer.apple.com/library/archive/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/BackgroundExecution/BackgroundExecution.html

## Install

```
cordova plugin add cordova-plugin-ios-finite-task
```

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a finitetask object to your root automatically when you build.

## Usage

### Start a task that will run (for a little while) even after the app leaves foreground

```js
finitetask.start(functionToRun);
```

## Platform support

iOS only.

## License

[Apache 2.0 License]