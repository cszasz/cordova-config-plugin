var exec = require('cordova/exec');

module.exports = {
    getPreference: function (key, success, error) {
        exec(success, error, "AppConfig", "getPreference", [key]);
    }
};
