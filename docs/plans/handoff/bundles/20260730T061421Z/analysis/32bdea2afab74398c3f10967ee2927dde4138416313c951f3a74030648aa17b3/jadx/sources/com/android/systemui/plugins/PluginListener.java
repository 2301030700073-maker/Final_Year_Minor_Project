package com.android.systemui.plugins;

import android.content.Context;

/* loaded from: classes.dex */
public interface PluginListener {
    void onPluginConnected(Plugin plugin, Context context);

    default void onPluginDisconnected(Plugin plugin) {
    }
}
