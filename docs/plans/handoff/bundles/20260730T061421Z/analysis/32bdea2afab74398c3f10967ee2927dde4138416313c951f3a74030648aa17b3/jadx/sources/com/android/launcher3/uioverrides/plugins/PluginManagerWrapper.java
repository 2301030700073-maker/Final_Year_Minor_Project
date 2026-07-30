package com.android.launcher3.uioverrides.plugins;

import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.plugins.PluginManager;
import com.android.systemui.shared.plugins.PluginManagerImpl;
import com.android.systemui.shared.plugins.PluginPrefs;

/* loaded from: classes.dex */
public class PluginManagerWrapper {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.Z0.k.a
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new PluginManagerWrapper(context);
        }
    });
    public final Context mContext;
    public final PluginEnablerImpl mPluginEnabler;
    public final PluginManager mPluginManager;

    public PluginManagerWrapper(Context context) {
        this.mContext = context;
        this.mPluginManager = new PluginManagerImpl(context, new PluginInitializerImpl());
        this.mPluginEnabler = new PluginEnablerImpl(context);
    }

    public static boolean hasPlugins(Context context) {
        return PluginPrefs.hasPlugins(context);
    }

    public static String pluginEnabledKey(ComponentName componentName) {
        return PluginEnablerImpl.pluginEnabledKey(componentName);
    }

    public void addPluginListener(PluginListener pluginListener, Class cls) {
        this.mPluginManager.addPluginListener(pluginListener, cls, false);
    }
}
