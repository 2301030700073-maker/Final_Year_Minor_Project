package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.util.ResourceBasedOverride;

/* loaded from: classes.dex */
public class LauncherActivityCachingLogic implements CachingLogic, ResourceBasedOverride {
    @Override // com.android.launcher3.icons.cache.CachingLogic
    public ComponentName getComponent(Object obj) {
        return ((LauncherActivityInfo) obj).getComponentName();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getLabel(Object obj) {
        return ((LauncherActivityInfo) obj).getLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public UserHandle getUser(Object obj) {
        return ((LauncherActivityInfo) obj).getUser();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public BitmapInfo loadIcon(Context context, Object obj) {
        LauncherActivityInfo launcherActivityInfo = (LauncherActivityInfo) obj;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(new IconProvider(context).getIcon(launcherActivityInfo, obtain.mFillResIconDpi), launcherActivityInfo.getUser(), launcherActivityInfo.getApplicationInfo().targetSdkVersion);
            obtain.recycle();
            return createBadgedIconBitmap;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
