package com.android.launcher3.widget;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class WidgetManagerHelper {
    public final AppWidgetManager mAppWidgetManager;
    public final Context mContext;

    public WidgetManagerHelper(Context context) {
        this.mContext = context;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }

    public static Stream allWidgetsSteam(Context context) {
        final AppWidgetManager appWidgetManager = (AppWidgetManager) context.getSystemService(AppWidgetManager.class);
        return Stream.concat(((UserCache) UserCache.INSTANCE.b(context)).getUserProfiles().stream().flatMap(new Function() { // from class: c.a.a.c1.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return appWidgetManager.getInstalledProvidersForProfile((UserHandle) obj).stream();
            }
        }), ((CustomWidgetManager) CustomWidgetManager.INSTANCE.b(context)).mCustomWidgets.stream());
    }

    public static Map getAllProvidersMap(Context context) {
        return (Map) allWidgetsSteam(context).collect(Collectors.toMap(new Function() { // from class: c.a.a.c1.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                return new ComponentKey(appWidgetProviderInfo.provider, appWidgetProviderInfo.getProfile());
            }
        }, Function.identity()));
    }

    public boolean bindAppWidgetIdIfAllowed(int i, AppWidgetProviderInfo appWidgetProviderInfo, Bundle bundle) {
        if (i <= -100) {
            return true;
        }
        return this.mAppWidgetManager.bindAppWidgetIdIfAllowed(i, appWidgetProviderInfo.getProfile(), appWidgetProviderInfo.provider, bundle);
    }

    public LauncherAppWidgetProviderInfo findProvider(ComponentName componentName, UserHandle userHandle) {
        for (AppWidgetProviderInfo appWidgetProviderInfo : getAllProviders(new PackageUserKey(componentName.getPackageName(), userHandle))) {
            if (appWidgetProviderInfo.provider.equals(componentName)) {
                return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
            }
        }
        return null;
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public List getAllProviders(PackageUserKey packageUserKey) {
        if (packageUserKey == null) {
            return (List) allWidgetsSteam(this.mContext).collect(Collectors.toList());
        }
        if (Utilities.ATLEAST_OREO) {
            return this.mAppWidgetManager.getInstalledProvidersForPackage(packageUserKey.mPackageName, packageUserKey.mUser);
        }
        final String str = packageUserKey.mPackageName;
        return (List) Stream.concat(this.mAppWidgetManager.getInstalledProvidersForProfile(packageUserKey.mUser).stream().filter(new Predicate() { // from class: c.a.a.c1.c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AppWidgetProviderInfo) obj).provider.equals(str);
            }
        }), (Process.myUserHandle().equals(packageUserKey.mUser) && this.mContext.getPackageName().equals(str)) ? ((CustomWidgetManager) CustomWidgetManager.INSTANCE.b(this.mContext)).mCustomWidgets.stream() : Stream.empty()).collect(Collectors.toList());
    }

    public LauncherAppWidgetProviderInfo getLauncherAppWidgetInfo(int i) {
        if (i <= -100) {
            return ((CustomWidgetManager) CustomWidgetManager.INSTANCE.b(this.mContext)).getWidgetProvider(i);
        }
        AppWidgetProviderInfo appWidgetInfo = this.mAppWidgetManager.getAppWidgetInfo(i);
        if (appWidgetInfo == null) {
            return null;
        }
        return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetInfo);
    }
}
