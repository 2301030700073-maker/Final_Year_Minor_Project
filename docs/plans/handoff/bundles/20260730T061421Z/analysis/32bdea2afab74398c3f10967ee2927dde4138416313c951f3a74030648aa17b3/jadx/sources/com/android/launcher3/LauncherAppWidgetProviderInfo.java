package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.UserHandle;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;

/* loaded from: classes.dex */
public class LauncherAppWidgetProviderInfo extends AppWidgetProviderInfo implements ComponentWithLabelAndIcon {
    public int minSpanX;
    public int minSpanY;
    public int spanX;
    public int spanY;

    public LauncherAppWidgetProviderInfo() {
    }

    public static LauncherAppWidgetProviderInfo fromProviderInfo(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo;
        if (appWidgetProviderInfo instanceof LauncherAppWidgetProviderInfo) {
            launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo) appWidgetProviderInfo;
        } else {
            Parcel obtain = Parcel.obtain();
            appWidgetProviderInfo.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            launcherAppWidgetProviderInfo = new LauncherAppWidgetProviderInfo(obtain);
            obtain.recycle();
        }
        launcherAppWidgetProviderInfo.initSpans(context);
        return launcherAppWidgetProviderInfo;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final ComponentName getComponent() {
        return ((AppWidgetProviderInfo) this).provider;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public Drawable getFullResIcon(IconCache iconCache) {
        return iconCache.getFullResIcon(((AppWidgetProviderInfo) this).provider.getPackageName(), ((AppWidgetProviderInfo) this).icon);
    }

    public Point getMinSpans() {
        return new Point((((AppWidgetProviderInfo) this).resizeMode & 1) != 0 ? this.minSpanX : -1, (((AppWidgetProviderInfo) this).resizeMode & 2) != 0 ? this.minSpanY : -1);
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final UserHandle getUser() {
        return getProfile();
    }

    public void initSpans(Context context) {
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        Point cellSize = idp.landscapeProfile.getCellSize();
        Point cellSize2 = idp.portraitProfile.getCellSize();
        float min = Math.min(cellSize.x, cellSize2.x);
        float min2 = Math.min(cellSize.y, cellSize2.y);
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, ((AppWidgetProviderInfo) this).provider, null);
        this.spanX = Math.max(1, (int) Math.ceil(((((AppWidgetProviderInfo) this).minWidth + defaultPaddingForWidget.left) + defaultPaddingForWidget.right) / min));
        this.spanY = Math.max(1, (int) Math.ceil(((((AppWidgetProviderInfo) this).minHeight + defaultPaddingForWidget.top) + defaultPaddingForWidget.bottom) / min2));
        this.minSpanX = Math.max(1, (int) Math.ceil(((((AppWidgetProviderInfo) this).minResizeWidth + defaultPaddingForWidget.left) + defaultPaddingForWidget.right) / min));
        this.minSpanY = Math.max(1, (int) Math.ceil(((((AppWidgetProviderInfo) this).minResizeHeight + defaultPaddingForWidget.top) + defaultPaddingForWidget.bottom) / min2));
    }

    public boolean isCustomWidget() {
        return ((AppWidgetProviderInfo) this).provider.getClassName().startsWith("#custom-widget-");
    }

    public LauncherAppWidgetProviderInfo(Parcel parcel) {
        super(parcel);
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public String getLabel(PackageManager packageManager) {
        return super.loadLabel(packageManager);
    }
}
