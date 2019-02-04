
var exec = require("cordova/exec");

var FiniteTask = function () {
    this.name = "FiniteTask";
};

FiniteTask.prototype.start = function (task) {
    exec(task, null, "FiniteTask", "start", []);
};

module.exports = new FiniteTask();
