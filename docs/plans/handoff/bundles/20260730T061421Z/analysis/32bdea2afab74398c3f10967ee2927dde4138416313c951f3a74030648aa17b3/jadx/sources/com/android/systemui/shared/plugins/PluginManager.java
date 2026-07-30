package com.android.systemui.shared.plugins;

import android.text.TextUtils;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.annotations.ProvidesInterface;

/* loaded from: classes.dex */
public interface PluginManager {
    public static final String NOTIFICATION_CHANNEL_ID = "ALR";
    public static final String PLUGIN_CHANGED = "com.android.systemui.action.PLUGIN_CHANGED";

    public class Helper {
        public static String getAction(Class cls) {
            ProvidesInterface providesInterface = (ProvidesInterface) cls.getDeclaredAnnotation(ProvidesInterface.class);
            if (providesInterface == null) {
                throw new RuntimeException(cls + " doesn't provide an interface");
            }
            if (!TextUtils.isEmpty(providesInterface.action())) {
                return providesInterface.action();
            }
            throw new RuntimeException(cls + " doesn't provide an action");
        }
    }

    void addPluginListener(PluginListener pluginListener, Class cls);

    void addPluginListener(PluginListener pluginListener, Class cls, boolean z);

    void addPluginListener(String str, PluginListener pluginListener, Class cls);

    void addPluginListener(String str, PluginListener pluginListener, Class cls, boolean z);

    boolean dependsOn(Plugin plugin, Class cls);

    Plugin getOneShotPlugin(Class cls);

    Plugin getOneShotPlugin(String str, Class cls);

    String[] getWhitelistedPlugins();

    void removePluginListener(PluginListener pluginListener);
}
