package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Bundle;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.PendingAddItemInfo;

/* loaded from: classes.dex */
public class PendingAddWidgetInfo extends PendingAddItemInfo {
    public Bundle bindOptions = null;
    public AppWidgetHostView boundWidget;
    public LauncherAppWidgetProviderInfo info;

    public PendingAddWidgetInfo(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (launcherAppWidgetProviderInfo.isCustomWidget()) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.info = launcherAppWidgetProviderInfo;
        this.user = launcherAppWidgetProviderInfo.getProfile();
        this.componentName = ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider;
        this.spanX = launcherAppWidgetProviderInfo.spanX;
        this.spanY = launcherAppWidgetProviderInfo.spanY;
        this.minSpanX = launcherAppWidgetProviderInfo.minSpanX;
        this.minSpanY = launcherAppWidgetProviderInfo.minSpanY;
        this.container = -105;
    }

    public WidgetAddFlowHandler getHandler() {
        return new WidgetAddFlowHandler(this.info);
    }
}
