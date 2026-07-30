package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.pm.PackageManager;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.ComponentKey;

/* loaded from: classes.dex */
public class WidgetItem extends ComponentKey {
    public final ShortcutConfigActivityInfo activityInfo;
    public final String label;
    public final int spanX;
    public final int spanY;
    public final LauncherAppWidgetProviderInfo widgetInfo;

    public WidgetItem(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, InvariantDeviceProfile invariantDeviceProfile, IconCache iconCache) {
        super(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider, launcherAppWidgetProviderInfo.getProfile());
        this.label = iconCache.getTitleNoCache(launcherAppWidgetProviderInfo);
        this.widgetInfo = launcherAppWidgetProviderInfo;
        this.activityInfo = null;
        this.spanX = Math.min(launcherAppWidgetProviderInfo.spanX, invariantDeviceProfile.numColumns);
        this.spanY = Math.min(launcherAppWidgetProviderInfo.spanY, invariantDeviceProfile.numRows);
    }

    public WidgetItem(ShortcutConfigActivityInfo shortcutConfigActivityInfo, IconCache iconCache, PackageManager packageManager) {
        super(shortcutConfigActivityInfo.mCn, shortcutConfigActivityInfo.mUser);
        this.label = shortcutConfigActivityInfo.isPersistable() ? iconCache.getTitleNoCache(shortcutConfigActivityInfo) : Utilities.trim(shortcutConfigActivityInfo.getLabel(packageManager));
        this.widgetInfo = null;
        this.activityInfo = shortcutConfigActivityInfo;
        this.spanY = 1;
        this.spanX = 1;
    }
}
