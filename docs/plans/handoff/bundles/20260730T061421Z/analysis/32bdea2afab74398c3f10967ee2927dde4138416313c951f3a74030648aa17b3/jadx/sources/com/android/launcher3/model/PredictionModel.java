package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.UserHandle;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ResourceBasedOverride;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PredictionModel implements ResourceBasedOverride {
    public Context mContext;
    public SharedPreferences mDevicePrefs;
    public UserCache mUserCache;

    public void a(List list) {
        StringBuilder sb = new StringBuilder();
        int min = Math.min(list.size(), 5);
        for (int i = 0; i < min; i++) {
            ComponentKey componentKey = (ComponentKey) list.get(i);
            sb.append(componentKey.componentName.flattenToString() + "#" + this.mUserCache.getSerialNumberForUser(componentKey.user));
            sb.append("\n");
        }
        this.mDevicePrefs.edit().putString("predicted_item_keys", sb.toString()).apply();
    }

    public List getPredictionComponentKeys() {
        int i;
        ComponentName unflattenFromString;
        ArrayList arrayList = new ArrayList();
        for (String str : this.mDevicePrefs.getString("predicted_item_keys", "").split("\n")) {
            int indexOf = str.indexOf(35);
            ComponentKey componentKey = null;
            if (indexOf >= 0 && (i = indexOf + 1) < str.length() && (unflattenFromString = ComponentName.unflattenFromString(str.substring(0, indexOf))) != null) {
                try {
                    UserHandle userForSerialNumber = this.mUserCache.getUserForSerialNumber(Long.parseLong(str.substring(i)));
                    if (userForSerialNumber != null) {
                        componentKey = new ComponentKey(unflattenFromString, userForSerialNumber);
                    }
                } catch (NumberFormatException unused) {
                }
            }
            if (componentKey != null) {
                arrayList.add(componentKey);
            }
        }
        return arrayList;
    }
}
