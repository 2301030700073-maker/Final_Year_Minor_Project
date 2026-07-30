package com.android.launcher3.uioverrides.plugins;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import b.l.AbstractC0157s;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.plugins.PluginEnabler;

/* loaded from: classes.dex */
public class PluginEnablerImpl extends AbstractC0157s implements PluginEnabler {
    public final SharedPreferences mSharedPrefs;

    public PluginEnablerImpl(Context context) {
        this.mSharedPrefs = Utilities.getDevicePrefs(context);
    }

    public static String pluginEnabledKey(ComponentName componentName) {
        StringBuilder f = a.f("PLUGIN_ENABLED_");
        f.append(componentName.flattenToString());
        return f.toString();
    }

    @Override // b.l.AbstractC0157s
    public boolean getBoolean(String str, boolean z) {
        return this.mSharedPrefs.getBoolean(str, z);
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public int getDisableReason(ComponentName componentName) {
        return !isEnabled(componentName) ? 1 : 0;
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public boolean isEnabled(ComponentName componentName) {
        return getBoolean(pluginEnabledKey(componentName), true);
    }

    @Override // b.l.AbstractC0157s
    public void putBoolean(String str, boolean z) {
        this.mSharedPrefs.edit().putBoolean(str, z).apply();
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public void setDisabled(ComponentName componentName, int i) {
        putBoolean(pluginEnabledKey(componentName), i == 0);
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public void setEnabled(ComponentName componentName) {
        putBoolean(pluginEnabledKey(componentName), true);
    }
}
