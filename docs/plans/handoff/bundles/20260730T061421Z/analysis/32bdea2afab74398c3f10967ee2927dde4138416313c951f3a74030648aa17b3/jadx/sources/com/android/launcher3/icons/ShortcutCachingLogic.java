package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import b.l.W;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.shortcuts.ShortcutKey;

/* loaded from: classes.dex */
public class ShortcutCachingLogic implements CachingLogic {
    public static Drawable getIcon(Context context, ShortcutInfo shortcutInfo, int i) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(shortcutInfo, i);
        } catch (IllegalStateException | SecurityException e) {
            Log.e("ShortcutCachingLogic", "Failed to get shortcut icon", e);
            return null;
        }
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public boolean addToMemCache() {
        return false;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public ComponentName getComponent(Object obj) {
        return ShortcutKey.fromInfo((ShortcutInfo) obj).componentName;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getDescription(Object obj, CharSequence charSequence) {
        CharSequence longLabel = ((ShortcutInfo) obj).getLongLabel();
        return TextUtils.isEmpty(longLabel) ? charSequence : longLabel;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public CharSequence getLabel(Object obj) {
        return ((ShortcutInfo) obj).getShortLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public long getLastUpdatedTime(Object obj, PackageInfo packageInfo) {
        ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
        return (shortcutInfo == null || !FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) ? packageInfo.lastUpdateTime : Math.max(shortcutInfo.getLastChangedTimestamp(), packageInfo.lastUpdateTime);
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public UserHandle getUser(Object obj) {
        return ((ShortcutInfo) obj).getUserHandle();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public BitmapInfo loadIcon(Context context, ShortcutInfo shortcutInfo) {
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = getIcon(context, shortcutInfo, LauncherAppState.getIDP(context).fillResIconDpi);
            if (icon == null) {
                BitmapInfo bitmapInfo = BitmapInfo.LOW_RES_INFO;
                obtain.recycle();
                return bitmapInfo;
            }
            BitmapInfo bitmapInfo2 = new BitmapInfo(obtain.createScaledBitmapWithoutShadow(icon, 0), W.getColorAccent(context));
            obtain.recycle();
            return bitmapInfo2;
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
