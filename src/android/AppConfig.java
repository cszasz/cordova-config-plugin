package com.example.appconfig;

import org.apache.cordova.*;
import org.json.JSONArray;

public class AppConfig extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args,
                           CallbackContext callbackContext) {

        if ("getPreference".equals(action)) {
            try {
                String key = args.getString(0);
                String value = preferences.getString(key, "");
                callbackContext.success(value);
            } catch (Exception e) {
                callbackContext.error(e.getMessage());
            }
            return true;
        }

        return false;
    }
}

