package com.android.launcher3.uioverrides.plugins;

import android.content.Context;
import android.os.Looper;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.plugins.PluginEnabler;
import com.android.systemui.shared.plugins.PluginInitializer;

/* loaded from: classes.dex */
public class PluginInitializerImpl implements PluginInitializer {
    @Override // com.android.systemui.shared.plugins.PluginInitializer
    public Looper getBgLooper() {
        return Executors.MODEL_EXECUTOR.getLooper();
    }

    @Override // com.android.systemui.shared.plugins.PluginInitializer
    public PluginEnabler getPluginEnabler(Context context) {
        return new PluginEnablerImpl(context);
    }

    @Override // com.android.systemui.shared.plugins.PluginInitializer
    public String[] getWhitelistedPlugins(Context context) {
        return new String[0];
    }

    @Override // com.android.systemui.shared.plugins.PluginInitializer
    public void handleWtfs() {
    }

    @Override // com.android.systemui.shared.plugins.PluginInitializer
    public void onPluginManagerInit() {
    }
}
