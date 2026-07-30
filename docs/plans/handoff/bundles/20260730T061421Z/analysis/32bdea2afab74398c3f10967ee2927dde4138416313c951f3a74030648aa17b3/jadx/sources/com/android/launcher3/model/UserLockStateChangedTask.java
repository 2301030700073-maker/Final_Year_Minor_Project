package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.util.Log;
import c.a.a.a1.n;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class UserLockStateChangedTask extends BaseModelUpdateTask {
    public boolean mIsUserUnlocked;
    public final UserHandle mUser;

    public UserLockStateChangedTask(UserHandle userHandle, boolean z) {
        this.mUser = userHandle;
        this.mIsUserUnlocked = z;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        ShortcutRequest.QueryResult queryResult;
        ShortcutRequest.QueryResult queryResult2;
        Context context = launcherAppState.mContext;
        HashMap hashMap = new HashMap();
        boolean z = false;
        if (this.mIsUserUnlocked) {
            UserHandle userHandle = this.mUser;
            LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
            shortcutQuery.setQueryFlags(2);
            try {
                queryResult2 = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
            } catch (IllegalStateException | SecurityException e) {
                Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                queryResult2 = ShortcutRequest.QueryResult.DEFAULT;
            }
            if (queryResult2.mWasSuccess) {
                Iterator it = queryResult2.iterator();
                while (it.hasNext()) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                    hashMap.put(ShortcutKey.fromInfo(shortcutInfo), shortcutInfo);
                }
            } else {
                this.mIsUserUnlocked = false;
            }
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        IntSparseArrayMap intSparseArrayMap = bgDataModel.itemsIdMap;
        Objects.requireNonNull(intSparseArrayMap);
        int i = 0;
        while (true) {
            if (!(i < intSparseArrayMap.size() ? true : z)) {
                break;
            }
            int i2 = i + 1;
            ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i);
            if (itemInfo.itemType == 6 && this.mUser.equals(itemInfo.user)) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                if (this.mIsUserUnlocked) {
                    ShortcutKey fromIntent = ShortcutKey.fromIntent(workspaceItemInfo.intent, workspaceItemInfo.user);
                    ShortcutInfo shortcutInfo2 = (ShortcutInfo) hashMap.get(fromIntent);
                    if (shortcutInfo2 == null) {
                        hashSet.add(fromIntent);
                        i = i2;
                    } else {
                        workspaceItemInfo.runtimeStatusFlags &= -33;
                        workspaceItemInfo.updateFromDeepShortcutInfo(shortcutInfo2, context);
                        IconCache iconCache = launcherAppState.mIconCache;
                        iconCache.getShortcutIcon(workspaceItemInfo, shortcutInfo2, true, iconCache.mIsUsingFallbackIconCheck);
                    }
                } else {
                    workspaceItemInfo.runtimeStatusFlags |= 32;
                }
                arrayList.add(workspaceItemInfo);
            }
            i = i2;
            z = false;
        }
        bindUpdatedWorkspaceItems(arrayList);
        if (!hashSet.isEmpty()) {
            deleteAndBindComponentsRemoved(new n(hashSet));
        }
        Iterator it2 = bgDataModel.deepShortcutMap.keySet().iterator();
        while (it2.hasNext()) {
            if (((ComponentKey) it2.next()).user.equals(this.mUser)) {
                it2.remove();
            }
        }
        if (this.mIsUserUnlocked) {
            UserHandle userHandle2 = this.mUser;
            LauncherApps.ShortcutQuery shortcutQuery2 = new LauncherApps.ShortcutQuery();
            shortcutQuery2.setQueryFlags(11);
            try {
                queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery2, userHandle2));
            } catch (IllegalStateException | SecurityException e2) {
                Log.e("ShortcutRequest", "Failed to query for shortcuts", e2);
                queryResult = ShortcutRequest.QueryResult.DEFAULT;
            }
            bgDataModel.updateDeepShortcutCounts(null, userHandle2, queryResult);
        }
        bindDeepShortcuts(bgDataModel);
    }
}
