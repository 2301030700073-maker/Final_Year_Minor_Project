package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.ComponentWithLabel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class IconCache extends BaseIconCache {
    public final CachingLogic mComponentWithLabelCachingLogic;
    public final IconProvider mIconProvider;
    public final InstantAppResolver mInstantAppResolver;
    public final Predicate mIsUsingFallbackIconCheck;
    public final CachingLogic mLauncherActivityInfoCachingLogic;
    public final LauncherApps mLauncherApps;
    public int mPendingIconRequestCount;
    public final CachingLogic mShortcutCachingLogic;
    public final UserCache mUserManager;

    public interface ItemInfoUpdateReceiver {
        void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon);
    }

    public IconCache(Context context, InvariantDeviceProfile invariantDeviceProfile, String str) {
        super(context, str, Executors.MODEL_EXECUTOR.getLooper(), invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize, true);
        this.mIsUsingFallbackIconCheck = new Predicate() { // from class: c.a.a.L0.h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return IconCache.this.c((ItemInfoWithIcon) obj);
            }
        };
        this.mPendingIconRequestCount = 0;
        this.mComponentWithLabelCachingLogic = new ComponentWithLabel.ComponentCachingLogic(context, false);
        this.mLauncherActivityInfoCachingLogic = (LauncherActivityCachingLogic) W.getObject(LauncherActivityCachingLogic.class, context, R.string.launcher_activity_logic_class);
        this.mShortcutCachingLogic = new ShortcutCachingLogic();
        this.mLauncherApps = (LauncherApps) this.mContext.getSystemService(LauncherApps.class);
        this.mUserManager = (UserCache) UserCache.INSTANCE.b(this.mContext);
        this.mInstantAppResolver = InstantAppResolver.newInstance(this.mContext);
        this.mIconProvider = new IconProvider(context);
    }

    public void applyCacheEntry(BaseIconCache.CacheEntry cacheEntry, ItemInfoWithIcon itemInfoWithIcon) {
        itemInfoWithIcon.title = Utilities.trim(cacheEntry.title);
        itemInfoWithIcon.contentDescription = cacheEntry.contentDescription;
        BitmapInfo bitmapInfo = cacheEntry.bitmap;
        if (bitmapInfo == null) {
            bitmapInfo = getDefaultIcon(itemInfoWithIcon.user);
        }
        itemInfoWithIcon.bitmap = bitmapInfo;
    }

    public /* synthetic */ LauncherActivityInfo b(Intent intent, ItemInfoWithIcon itemInfoWithIcon) {
        return this.mLauncherApps.resolveActivity(intent, itemInfoWithIcon.user);
    }

    public /* synthetic */ boolean c(ItemInfoWithIcon itemInfoWithIcon) {
        BitmapInfo bitmapInfo = itemInfoWithIcon.bitmap;
        return (bitmapInfo == null || !bitmapInfo.isNullOrLowRes() || isDefaultIcon(itemInfoWithIcon.bitmap, itemInfoWithIcon.user)) ? false : true;
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public boolean getEntryFromDB(ComponentKey componentKey, BaseIconCache.CacheEntry cacheEntry, boolean z) {
        ComponentName componentName = this.mIconProvider.mClock;
        if (componentName != null && componentName.equals(componentKey.componentName) && Process.myUserHandle().equals(componentKey.user)) {
            return false;
        }
        return super.getEntryFromDB(componentKey, cacheEntry, z);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public BaseIconFactory getIconFactory() {
        return LauncherIcons.obtain(this.mContext);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public String getIconSystemState(String str) {
        StringBuilder sb = new StringBuilder();
        IconProvider iconProvider = this.mIconProvider;
        String str2 = this.mSystemState;
        ComponentName componentName = iconProvider.mCalendar;
        if (componentName != null && componentName.getPackageName().equals(str)) {
            StringBuilder g = a.g(str2, " ");
            g.append(Calendar.getInstance().get(5) - 1);
            str2 = g.toString();
        }
        sb.append(str2);
        sb.append(",flags_asi:");
        sb.append(FeatureFlags.APP_SEARCH_IMPROVEMENTS.get());
        return sb.toString();
    }

    public void getShortcutIcon(ItemInfoWithIcon itemInfoWithIcon, ShortcutInfo shortcutInfo, Predicate predicate) {
        getShortcutIcon(itemInfoWithIcon, shortcutInfo, true, predicate);
    }

    public BitmapInfo getShortcutInfoBadge(ShortcutInfo shortcutInfo) {
        ComponentName activity = shortcutInfo.getActivity();
        if (activity == null) {
            PackageItemInfo packageItemInfo = new PackageItemInfo(shortcutInfo.getPackage());
            getTitleAndIconForApp(packageItemInfo, false);
            return packageItemInfo.bitmap;
        }
        AppInfo appInfo = new AppInfo();
        appInfo.user = shortcutInfo.getUserHandle();
        appInfo.componentName = activity;
        appInfo.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(activity);
        getTitleAndIcon(appInfo, false);
        return appInfo.bitmap;
    }

    public synchronized void getTitleAndIcon(ItemInfoWithIcon itemInfoWithIcon, final LauncherActivityInfo launcherActivityInfo, boolean z) {
        getTitleAndIcon(itemInfoWithIcon, new Supplier() { // from class: c.a.a.L0.j
            @Override // java.util.function.Supplier
            public final Object get() {
                return launcherActivityInfo;
            }
        }, false, z);
    }

    public synchronized void getTitleAndIconForApp(PackageItemInfo packageItemInfo, boolean z) {
        applyCacheEntry(getEntryForPackageLocked(packageItemInfo.packageName, packageItemInfo.user, z), packageItemInfo);
    }

    public synchronized String getTitleNoCache(final ComponentWithLabel componentWithLabel) {
        return Utilities.trim(cacheLocked(componentWithLabel.getComponent(), componentWithLabel.getUser(), new Supplier() { // from class: c.a.a.L0.f
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComponentWithLabel.this;
            }
        }, this.mComponentWithLabelCachingLogic, false, true).title);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.launcher3.icons.IconCache$1, java.lang.Runnable] */
    public AnonymousClass1 updateIconInBackground(final ItemInfoUpdateReceiver itemInfoUpdateReceiver, final ItemInfoWithIcon itemInfoWithIcon) {
        if (this.mPendingIconRequestCount <= 0) {
            Executors.MODEL_EXECUTOR.setThreadPriority(-2);
        }
        this.mPendingIconRequestCount++;
        ?? r0 = new HandlerRunnable(this.mWorkerHandler, new Runnable() { // from class: c.a.a.L0.g
            @Override // java.lang.Runnable
            public final void run() {
                IconCache iconCache = IconCache.this;
                int i = iconCache.mPendingIconRequestCount - 1;
                iconCache.mPendingIconRequestCount = i;
                if (i <= 0) {
                    Executors.MODEL_EXECUTOR.setThreadPriority(10);
                }
            }
        }) { // from class: com.android.launcher3.icons.IconCache.1
            @Override // java.lang.Runnable
            public void run() {
                ItemInfoWithIcon itemInfoWithIcon2 = itemInfoWithIcon;
                if ((itemInfoWithIcon2 instanceof AppInfo) || (itemInfoWithIcon2 instanceof WorkspaceItemInfo)) {
                    IconCache.this.getTitleAndIcon(itemInfoWithIcon, false);
                } else if (itemInfoWithIcon2 instanceof PackageItemInfo) {
                    IconCache.this.getTitleAndIconForApp((PackageItemInfo) itemInfoWithIcon2, false);
                }
                LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                final ItemInfoUpdateReceiver itemInfoUpdateReceiver2 = itemInfoUpdateReceiver;
                final ItemInfoWithIcon itemInfoWithIcon3 = itemInfoWithIcon;
                looperExecutor.execute(new Runnable() { // from class: c.a.a.L0.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        IconCache.AnonymousClass1 anonymousClass1 = IconCache.AnonymousClass1.this;
                        IconCache.ItemInfoUpdateReceiver itemInfoUpdateReceiver3 = itemInfoUpdateReceiver2;
                        ItemInfoWithIcon itemInfoWithIcon4 = itemInfoWithIcon3;
                        Objects.requireNonNull(anonymousClass1);
                        itemInfoUpdateReceiver3.reapplyItemInfo(itemInfoWithIcon4);
                        anonymousClass1.onEnd();
                    }
                });
            }
        };
        Utilities.postAsyncCallback(this.mWorkerHandler, r0);
        return r0;
    }

    public synchronized void updateIconsForPkg(String str, UserHandle userHandle) {
        removeIconsForPkg(str, userHandle);
        try {
            PackageInfo packageInfo = this.mPackageManager.getPackageInfo(str, QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
            long serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
            Iterator<LauncherActivityInfo> it = this.mLauncherApps.getActivityList(str, userHandle).iterator();
            while (it.hasNext()) {
                addIconToDBAndMemCache(it.next(), this.mLauncherActivityInfoCachingLogic, packageInfo, serialNumberForUser, false);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("Launcher.IconCache", "Package not found", e);
        }
    }

    public void updateSessionCache(PackageUserKey packageUserKey, PackageInstaller.SessionInfo sessionInfo) {
        String str = packageUserKey.mPackageName;
        UserHandle userHandle = packageUserKey.mUser;
        Bitmap appIcon = sessionInfo.getAppIcon();
        CharSequence appLabel = sessionInfo.getAppLabel();
        synchronized (this) {
            removeFromMemCacheLocked(str, userHandle);
            ComponentKey packageKey = BaseIconCache.getPackageKey(str, userHandle);
            BaseIconCache.CacheEntry cacheEntry = (BaseIconCache.CacheEntry) this.mCache.get(packageKey);
            if (cacheEntry == null) {
                cacheEntry = new BaseIconCache.CacheEntry();
            }
            if (!TextUtils.isEmpty(appLabel)) {
                cacheEntry.title = appLabel;
            }
            if (appIcon != null) {
                BaseIconFactory iconFactory = getIconFactory();
                cacheEntry.bitmap = iconFactory.createIconBitmap(appIcon);
                ((LauncherIcons) iconFactory).recycle();
            }
            if (!TextUtils.isEmpty(appLabel) && cacheEntry.bitmap.icon != null) {
                this.mCache.put(packageKey, cacheEntry);
            }
        }
    }

    public final synchronized void getShortcutIcon(ItemInfoWithIcon itemInfoWithIcon, final ShortcutInfo shortcutInfo, boolean z, Predicate predicate) {
        BitmapInfo loadIcon = FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get() ? cacheLocked(ShortcutKey.fromInfo(shortcutInfo).componentName, shortcutInfo.getUserHandle(), new Supplier() { // from class: c.a.a.L0.d
            @Override // java.util.function.Supplier
            public final Object get() {
                return shortcutInfo;
            }
        }, this.mShortcutCachingLogic, false, false).bitmap : this.mShortcutCachingLogic.loadIcon(this.mContext, shortcutInfo);
        if (loadIcon.isNullOrLowRes()) {
            loadIcon = getDefaultIcon(shortcutInfo.getUserHandle());
        }
        if (isDefaultIcon(loadIcon, shortcutInfo.getUserHandle()) && predicate.test(itemInfoWithIcon)) {
            return;
        }
        itemInfoWithIcon.bitmap = loadIcon;
        if (z) {
            BitmapInfo shortcutInfoBadge = getShortcutInfoBadge(shortcutInfo);
            LauncherIcons obtain = LauncherIcons.obtain(this.mContext);
            try {
                itemInfoWithIcon.bitmap = obtain.badgeBitmap(itemInfoWithIcon.bitmap.icon, shortcutInfoBadge);
                obtain.recycle();
            } finally {
            }
        }
    }

    public synchronized void getTitleAndIcon(final ItemInfoWithIcon itemInfoWithIcon, boolean z) {
        if (itemInfoWithIcon.getTargetComponent() == null) {
            itemInfoWithIcon.bitmap = getDefaultIcon(itemInfoWithIcon.user);
            itemInfoWithIcon.title = "";
            itemInfoWithIcon.contentDescription = "";
        } else {
            final Intent intent = itemInfoWithIcon.getIntent();
            getTitleAndIcon(itemInfoWithIcon, new Supplier() { // from class: c.a.a.L0.e
                @Override // java.util.function.Supplier
                public final Object get() {
                    return IconCache.this.b(intent, itemInfoWithIcon);
                }
            }, true, z);
        }
    }

    public final synchronized void getTitleAndIcon(ItemInfoWithIcon itemInfoWithIcon, Supplier supplier, boolean z, boolean z2) {
        applyCacheEntry(cacheLocked(itemInfoWithIcon.getTargetComponent(), itemInfoWithIcon.user, supplier, this.mLauncherActivityInfoCachingLogic, z, z2), itemInfoWithIcon);
    }
}
