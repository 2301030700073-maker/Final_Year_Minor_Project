package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.LocaleList;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import c.a.a.N0.C0206c;
import c.a.a.N0.h0.b;
import com.android.launcher3.AppFilter;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class AllAppsList {
    public static final Consumer NO_OP_CONSUMER = C0206c.f1514a;
    public AppFilter mAppFilter;
    public int mFlags;
    public IconCache mIconCache;
    public final ArrayList data = new ArrayList(42);
    public boolean mDataChanged = false;
    public Consumer mRemoveListener = C0206c.f1514a;
    public AlphabeticIndexCompat mIndex = new AlphabeticIndexCompat(LocaleList.getDefault());

    public AllAppsList(IconCache iconCache, AppFilter appFilter) {
        this.mIconCache = iconCache;
        this.mAppFilter = appFilter;
    }

    public static /* synthetic */ void a(AppInfo appInfo) {
    }

    public void add(AppInfo appInfo, LauncherActivityInfo launcherActivityInfo) {
        if (this.mAppFilter.shouldShowApp(appInfo.componentName) && findAppInfo(appInfo.componentName, appInfo.user) == null) {
            this.mIconCache.getTitleAndIcon(appInfo, launcherActivityInfo, true);
            appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
            this.data.add(appInfo);
            this.mDataChanged = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if ((r8.flags & 8388608) == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
    
        if (r8.enabled == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r8.enabled != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        r5 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addPromiseApp(android.content.Context r8, com.android.launcher3.pm.PackageInstallInfo r9) {
        /*
            r7 = this;
            android.content.pm.PackageManager r0 = r8.getPackageManager()
            java.lang.Class<android.content.pm.LauncherApps> r1 = android.content.pm.LauncherApps.class
            java.lang.Object r8 = r8.getSystemService(r1)
            android.content.pm.LauncherApps r8 = (android.content.pm.LauncherApps) r8
            java.lang.String r1 = r9.packageName
            android.os.UserHandle r2 = r9.user
            boolean r3 = com.android.launcher3.Utilities.ATLEAST_OREO
            r4 = 8388608(0x800000, float:1.1754944E-38)
            r5 = 0
            r6 = 0
            if (r3 == 0) goto L28
            android.content.pm.ApplicationInfo r8 = r8.getApplicationInfo(r1, r6, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            int r0 = r8.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            r0 = r0 & r4
            if (r0 == 0) goto L56
            boolean r0 = r8.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            if (r0 != 0) goto L26
            goto L56
        L26:
            r5 = r8
            goto L56
        L28:
            android.os.UserHandle r3 = android.os.Process.myUserHandle()
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L47
            java.util.List r8 = r8.getActivityList(r1, r2)
            int r0 = r8.size()
            if (r0 <= 0) goto L56
            java.lang.Object r8 = r8.get(r6)
            android.content.pm.LauncherActivityInfo r8 = (android.content.pm.LauncherActivityInfo) r8
            android.content.pm.ApplicationInfo r5 = r8.getApplicationInfo()
            goto L56
        L47:
            android.content.pm.ApplicationInfo r8 = r0.getApplicationInfo(r1, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            if (r3 == 0) goto L52
            int r0 = r8.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            r0 = r0 & r4
            if (r0 == 0) goto L56
        L52:
            boolean r0 = r8.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L56
            if (r0 != 0) goto L26
        L56:
            if (r5 != 0) goto L78
            com.android.launcher3.model.data.PromiseAppInfo r8 = new com.android.launcher3.model.data.PromiseAppInfo
            r8.<init>(r9)
            com.android.launcher3.icons.IconCache r9 = r7.mIconCache
            boolean r0 = r8.usingLowResIcon()
            r9.getTitleAndIcon(r8, r0)
            com.android.launcher3.compat.AlphabeticIndexCompat r9 = r7.mIndex
            java.lang.CharSequence r0 = r8.title
            java.lang.String r9 = r9.computeSectionName(r0)
            r8.sectionName = r9
            java.util.ArrayList r9 = r7.data
            r9.add(r8)
            r8 = 1
            r7.mDataChanged = r8
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.AllAppsList.addPromiseApp(android.content.Context, com.android.launcher3.pm.PackageInstallInfo):void");
    }

    public AppInfo[] copyData() {
        AppInfo[] appInfoArr = (AppInfo[]) this.data.toArray(AppInfo.EMPTY_ARRAY);
        Comparator comparator = AppInfo.COMPONENT_KEY_COMPARATOR;
        Arrays.sort(appInfoArr, b.f1529a);
        return appInfoArr;
    }

    public final AppInfo findAppInfo(ComponentName componentName, UserHandle userHandle) {
        Iterator it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = (AppInfo) it.next();
            if (componentName.equals(appInfo.componentName) && userHandle.equals(appInfo.user)) {
                return appInfo;
            }
        }
        return null;
    }

    public final void removeApp(int i) {
        AppInfo appInfo = (AppInfo) this.data.remove(i);
        if (appInfo != null) {
            this.mDataChanged = true;
            this.mRemoveListener.accept(appInfo);
        }
    }

    public void removePackage(String str, UserHandle userHandle) {
        ArrayList arrayList = this.data;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AppInfo appInfo = (AppInfo) arrayList.get(size);
            if (appInfo.user.equals(userHandle) && str.equals(appInfo.componentName.getPackageName())) {
                removeApp(size);
            }
        }
    }

    public void setFlags(int i, boolean z) {
        if (z) {
            this.mFlags = i | this.mFlags;
        } else {
            this.mFlags = (~i) & this.mFlags;
        }
        this.mDataChanged = true;
    }

    public void updateDisabledFlags(ItemInfoMatcher itemInfoMatcher, FlagOp flagOp) {
        ArrayList arrayList = this.data;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AppInfo appInfo = (AppInfo) arrayList.get(size);
            if (itemInfoMatcher.matches(appInfo, appInfo.componentName)) {
                appInfo.runtimeStatusFlags = flagOp.apply(appInfo.runtimeStatusFlags);
                this.mDataChanged = true;
            }
        }
    }

    public void updateIconsAndLabels(HashSet hashSet, UserHandle userHandle) {
        Iterator it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = (AppInfo) it.next();
            if (appInfo.user.equals(userHandle) && hashSet.contains(appInfo.componentName.getPackageName())) {
                IconCache iconCache = this.mIconCache;
                synchronized (iconCache) {
                    BaseIconCache.CacheEntry cacheLocked = iconCache.cacheLocked(appInfo.componentName, appInfo.user, new Supplier() { // from class: c.a.a.L0.i
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            return null;
                        }
                    }, iconCache.mLauncherActivityInfoCachingLogic, false, appInfo.usingLowResIcon());
                    if (cacheLocked.bitmap != null && !iconCache.isDefaultIcon(cacheLocked.bitmap, appInfo.user)) {
                        iconCache.applyCacheEntry(cacheLocked, appInfo);
                    }
                }
                appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
                this.mDataChanged = true;
            }
        }
    }

    public void updatePackage(Context context, String str, UserHandle userHandle) {
        boolean z;
        List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(str, userHandle);
        if (activityList.size() <= 0) {
            for (int size = this.data.size() - 1; size >= 0; size--) {
                AppInfo appInfo = (AppInfo) this.data.get(size);
                if (userHandle.equals(appInfo.user) && str.equals(appInfo.componentName.getPackageName())) {
                    this.mIconCache.remove(appInfo.componentName, userHandle);
                    removeApp(size);
                }
            }
            return;
        }
        for (int size2 = this.data.size() - 1; size2 >= 0; size2--) {
            AppInfo appInfo2 = (AppInfo) this.data.get(size2);
            if (userHandle.equals(appInfo2.user) && str.equals(appInfo2.componentName.getPackageName())) {
                ComponentName componentName = appInfo2.componentName;
                Iterator<LauncherActivityInfo> it = activityList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().getComponentName().equals(componentName)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    Log.w("AllAppsList", "Changing shortcut target due to app component name change.");
                    removeApp(size2);
                }
            }
        }
        for (LauncherActivityInfo launcherActivityInfo : activityList) {
            AppInfo findAppInfo = findAppInfo(launcherActivityInfo.getComponentName(), userHandle);
            if (findAppInfo == null) {
                add(new AppInfo(context, launcherActivityInfo, userHandle), launcherActivityInfo);
            } else {
                this.mIconCache.getTitleAndIcon(findAppInfo, launcherActivityInfo, true);
                findAppInfo.sectionName = this.mIndex.computeSectionName(findAppInfo.title);
                this.mDataChanged = true;
            }
        }
    }

    public PromiseAppInfo updatePromiseInstallInfo(PackageInstallInfo packageInstallInfo) {
        UserHandle myUserHandle = Process.myUserHandle();
        for (int i = 0; i < this.data.size(); i++) {
            AppInfo appInfo = (AppInfo) this.data.get(i);
            ComponentName targetComponent = appInfo.getTargetComponent();
            if (targetComponent != null && targetComponent.getPackageName().equals(packageInstallInfo.packageName) && appInfo.user.equals(myUserHandle) && (appInfo instanceof PromiseAppInfo)) {
                PromiseAppInfo promiseAppInfo = (PromiseAppInfo) appInfo;
                int i2 = packageInstallInfo.state;
                if (i2 == 1) {
                    promiseAppInfo.level = packageInstallInfo.progress;
                    return promiseAppInfo;
                }
                if (i2 == 2) {
                    removeApp(i);
                }
            }
        }
        return null;
    }
}
