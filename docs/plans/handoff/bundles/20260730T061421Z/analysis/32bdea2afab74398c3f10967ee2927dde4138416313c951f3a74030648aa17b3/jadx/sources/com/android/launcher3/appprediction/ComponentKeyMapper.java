package com.android.launcher3.appprediction;

import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.quickstep.InstantAppResolverImpl;

/* loaded from: classes.dex */
public class ComponentKeyMapper {
    public final ComponentKey componentKey;
    public final DynamicItemCache mCache;

    public ComponentKeyMapper(ComponentKey componentKey, DynamicItemCache dynamicItemCache) {
        this.componentKey = componentKey;
        this.mCache = dynamicItemCache;
    }

    public ItemInfoWithIcon getApp(AllAppsStore allAppsStore) {
        AppInfo app = allAppsStore.getApp(this.componentKey);
        if (app != null) {
            return app;
        }
        if (this.componentKey.componentName.getClassName().equals(InstantAppResolverImpl.COMPONENT_CLASS_MARKER)) {
            DynamicItemCache dynamicItemCache = this.mCache;
            return (InstantAppItemInfo) dynamicItemCache.mInstantApps.get(this.componentKey.componentName.getPackageName());
        }
        DynamicItemCache dynamicItemCache2 = this.mCache;
        return (WorkspaceItemInfo) dynamicItemCache2.mShortcuts.get(this.componentKey);
    }

    public String toString() {
        return this.componentKey.toString();
    }
}
