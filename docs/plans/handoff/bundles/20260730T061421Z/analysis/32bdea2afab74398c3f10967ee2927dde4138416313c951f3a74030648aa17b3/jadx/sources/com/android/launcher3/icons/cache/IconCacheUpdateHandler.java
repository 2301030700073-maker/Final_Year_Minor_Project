package com.android.launcher3.icons.cache;

import android.content.pm.PackageInfo;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.SparseBooleanArray;
import c.a.c.a.a;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;

/* loaded from: classes.dex */
public class IconCacheUpdateHandler {
    public static final Object ICON_UPDATE_TOKEN = new Object();
    public final BaseIconCache mIconCache;
    public final ArrayMap mPackagesToIgnore = new ArrayMap();
    public final SparseBooleanArray mItemsToDelete = new SparseBooleanArray();
    public boolean mFilterMode = true;
    public final HashMap mPkgInfoMap = new HashMap();

    public interface OnUpdateCallback {
        void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle);
    }

    public class SerializedIconUpdateTask implements Runnable {
        public final Stack mAppsToAdd;
        public final Stack mAppsToUpdate;
        public final CachingLogic mCachingLogic;
        public final OnUpdateCallback mOnUpdateCallback;
        public final HashSet mUpdatedPackages = new HashSet();
        public final UserHandle mUserHandle;
        public final long mUserSerial;

        public SerializedIconUpdateTask(long j, UserHandle userHandle, Stack stack, Stack stack2, CachingLogic cachingLogic, OnUpdateCallback onUpdateCallback) {
            this.mUserHandle = userHandle;
            this.mUserSerial = j;
            this.mAppsToAdd = stack;
            this.mAppsToUpdate = stack2;
            this.mCachingLogic = cachingLogic;
            this.mOnUpdateCallback = onUpdateCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAppsToUpdate.isEmpty()) {
                if (this.mAppsToAdd.isEmpty()) {
                    return;
                }
                Object pop = this.mAppsToAdd.pop();
                PackageInfo packageInfo = (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(this.mCachingLogic.getComponent(pop).getPackageName());
                if (packageInfo != null) {
                    IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(pop, this.mCachingLogic, packageInfo, this.mUserSerial, false);
                }
                if (this.mAppsToAdd.isEmpty()) {
                    return;
                }
                scheduleNext();
                return;
            }
            Object pop2 = this.mAppsToUpdate.pop();
            String packageName = this.mCachingLogic.getComponent(pop2).getPackageName();
            IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(pop2, this.mCachingLogic, (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(packageName), this.mUserSerial, true);
            this.mUpdatedPackages.add(packageName);
            if (this.mAppsToUpdate.isEmpty() && !this.mUpdatedPackages.isEmpty()) {
                this.mOnUpdateCallback.onPackageIconsUpdated(this.mUpdatedPackages, this.mUserHandle);
            }
            scheduleNext();
        }

        public void scheduleNext() {
            IconCacheUpdateHandler.this.mIconCache.mWorkerHandler.postAtTime(this, IconCacheUpdateHandler.ICON_UPDATE_TOKEN, SystemClock.uptimeMillis() + 1);
        }
    }

    public IconCacheUpdateHandler(BaseIconCache baseIconCache) {
        this.mIconCache = baseIconCache;
        this.mIconCache.mWorkerHandler.removeCallbacksAndMessages(ICON_UPDATE_TOKEN);
        for (PackageInfo packageInfo : this.mIconCache.mPackageManager.getInstalledPackages(QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED)) {
            this.mPkgInfoMap.put(packageInfo.packageName, packageInfo);
        }
    }

    public void addPackagesToIgnore(UserHandle userHandle, String str) {
        Set set = (Set) this.mPackagesToIgnore.get(userHandle);
        if (set == null) {
            set = new HashSet();
            this.mPackagesToIgnore.put(userHandle, set);
        }
        set.add(str);
    }

    public void finish() {
        StringBuilder g = a.g("rowid", " IN (");
        int size = this.mItemsToDelete.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mItemsToDelete.valueAt(i2)) {
                if (i > 0) {
                    g.append(", ");
                }
                g.append(this.mItemsToDelete.keyAt(i2));
                i++;
            }
        }
        g.append(')');
        if (i > 0) {
            this.mIconCache.mIconDb.delete(g.toString(), null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateIcons(java.util.List r24, com.android.launcher3.icons.cache.CachingLogic r25, com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback r26) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.cache.IconCacheUpdateHandler.updateIcons(java.util.List, com.android.launcher3.icons.cache.CachingLogic, com.android.launcher3.icons.cache.IconCacheUpdateHandler$OnUpdateCallback):void");
    }
}
