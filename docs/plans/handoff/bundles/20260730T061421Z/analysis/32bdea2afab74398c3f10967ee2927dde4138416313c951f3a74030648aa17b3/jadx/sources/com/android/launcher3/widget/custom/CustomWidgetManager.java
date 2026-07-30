package com.android.launcher3.widget.custom;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Parcel;
import android.os.Process;
import android.util.SparseArray;
import c.a.c.a.a;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.plugins.CustomWidgetPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class CustomWidgetManager implements PluginListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.c1.g.a
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new CustomWidgetManager(context);
        }
    });
    public final Context mContext;
    public Consumer mWidgetRefreshCallback;
    public int mAutoProviderId = 0;
    public final SparseArray mPlugins = new SparseArray();
    public final List mCustomWidgets = new ArrayList();
    public final SparseArray mWidgetsIdMap = new SparseArray();

    public CustomWidgetManager(Context context) {
        this.mContext = context;
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(context)).mPluginManager.addPluginListener((PluginListener) this, CustomWidgetPlugin.class, true);
    }

    public LauncherAppWidgetProviderInfo getWidgetProvider(int i) {
        ComponentName componentName = (ComponentName) this.mWidgetsIdMap.get((-100) - i);
        for (LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo : this.mCustomWidgets) {
            if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.equals(componentName)) {
                return launcherAppWidgetProviderInfo;
            }
        }
        return null;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(Plugin plugin, Context context) {
        CustomWidgetPlugin customWidgetPlugin = (CustomWidgetPlugin) plugin;
        this.mPlugins.put(this.mAutoProviderId, customWidgetPlugin);
        List<AppWidgetProviderInfo> installedProvidersForProfile = AppWidgetManager.getInstance(context).getInstalledProvidersForProfile(Process.myUserHandle());
        if (installedProvidersForProfile.isEmpty()) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        installedProvidersForProfile.get(0).writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        int i = this.mAutoProviderId;
        CustomAppWidgetProviderInfo customAppWidgetProviderInfo = new CustomAppWidgetProviderInfo(obtain, false, i);
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).provider = new ComponentName(context.getPackageName(), a.c("#custom-widget-", i));
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).label = customWidgetPlugin.getLabel();
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).resizeMode = customWidgetPlugin.getResizeMode();
        customAppWidgetProviderInfo.spanX = customWidgetPlugin.getSpanX();
        customAppWidgetProviderInfo.spanY = customWidgetPlugin.getSpanY();
        customAppWidgetProviderInfo.minSpanX = customWidgetPlugin.getMinSpanX();
        customAppWidgetProviderInfo.minSpanY = customWidgetPlugin.getMinSpanY();
        obtain.recycle();
        this.mCustomWidgets.add(customAppWidgetProviderInfo);
        this.mWidgetsIdMap.put(this.mAutoProviderId, ((AppWidgetProviderInfo) customAppWidgetProviderInfo).provider);
        this.mWidgetRefreshCallback.accept(null);
        this.mAutoProviderId++;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        int i;
        CustomWidgetPlugin customWidgetPlugin = (CustomWidgetPlugin) plugin;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mPlugins.size()) {
                i = -1;
                break;
            }
            i = this.mPlugins.keyAt(i2);
            if (this.mPlugins.get(i) == customWidgetPlugin) {
                break;
            } else {
                i2++;
            }
        }
        if (i == -1) {
            return;
        }
        this.mPlugins.remove(i);
        this.mCustomWidgets.remove(getWidgetProvider(i));
        this.mWidgetsIdMap.remove(i);
    }
}
