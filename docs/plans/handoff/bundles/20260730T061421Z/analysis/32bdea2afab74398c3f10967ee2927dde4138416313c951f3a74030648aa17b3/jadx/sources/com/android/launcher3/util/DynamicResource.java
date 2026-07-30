package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.DynamicResource;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.ResourceProvider;

/* loaded from: classes.dex */
public class DynamicResource implements ResourceProvider, PluginListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.a1.d
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new DynamicResource(context);
        }
    });
    public final Context mContext;
    public ResourceProvider mPlugin;

    public DynamicResource(Context context) {
        this.mContext = context;
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(context)).mPluginManager.addPluginListener((PluginListener) this, ResourceProvider.class, false);
    }

    public static ResourceProvider provider(Context context) {
        DynamicResource dynamicResource = (DynamicResource) INSTANCE.b(context);
        ResourceProvider resourceProvider = dynamicResource.mPlugin;
        return resourceProvider == null ? dynamicResource : resourceProvider;
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public int getColor(int i) {
        return this.mContext.getResources().getColor(i, null);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getDimension(int i) {
        return this.mContext.getResources().getDimension(i);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getFloat(int i) {
        return this.mContext.getResources().getFloat(i);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getFraction(int i) {
        return this.mContext.getResources().getFraction(i, 1, 1);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public int getInt(int i) {
        return this.mContext.getResources().getInteger(i);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(Plugin plugin, Context context) {
        this.mPlugin = (ResourceProvider) plugin;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        this.mPlugin = null;
    }
}
