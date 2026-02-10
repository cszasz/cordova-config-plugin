var exec = require('cordova/exec');

module.exports = {
    getPreference: function (key, success, error) {
        console.log("AppConfig.getPreference("+key+")");
        try {
	   exec(success, error, "AppConfig", "getPreference", [key]);
	} catch (ex) {
           error(error)
	}       
    }
};
