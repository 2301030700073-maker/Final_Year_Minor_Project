package com.android.systemui.shared.plugins;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.ArraySet;
import java.util.Set;

/* loaded from: classes.dex */
public class PluginPrefs {
    public static final String HAS_PLUGINS = "plugins";
    public static final String PLUGIN_ACTIONS = "actions";
    public static final String PREFS = "plugin_prefs";
    public final Set mPluginActions;
    public final SharedPreferences mSharedPrefs;

    public PluginPrefs(Context context) {
        this.mSharedPrefs = context.getSharedPreferences(PREFS, 0);
        this.mPluginActions = new ArraySet(this.mSharedPrefs.getStringSet(PLUGIN_ACTIONS, null));
    }

    public static boolean hasPlugins(Context context) {
        return context.getSharedPreferences(PREFS, 0).getBoolean(HAS_PLUGINS, false);
    }

    public static void setHasPlugins(Context context) {
        context.getSharedPreferences(PREFS, 0).edit().putBoolean(HAS_PLUGINS, true).apply();
    }

    public synchronized void addAction(String str) {
        if (this.mPluginActions.add(str)) {
            this.mSharedPrefs.edit().putStringSet(PLUGIN_ACTIONS, this.mPluginActions).apply();
        }
    }

    public Set getPluginList() {
        return new ArraySet(this.mPluginActions);
    }
}
