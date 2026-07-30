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
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ShortcutsChangedTask extends BaseModelUpdateTask {
    public final String mPackageName;
    public final List mShortcuts;
    public final boolean mUpdateIdMap;
    public final UserHandle mUser;

    public ShortcutsChangedTask(String str, List list, UserHandle userHandle, boolean z) {
        this.mPackageName = str;
        this.mShortcuts = list;
        this.mUser = userHandle;
        this.mUpdateIdMap = z;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        ShortcutRequest.QueryResult<ShortcutInfo> queryResult;
        Context context = launcherAppState.mContext;
        HashSet hashSet = new HashSet();
        MultiHashMap multiHashMap = new MultiHashMap();
        HashSet hashSet2 = new HashSet();
        IntSparseArrayMap intSparseArrayMap = bgDataModel.itemsIdMap;
        Objects.requireNonNull(intSparseArrayMap);
        int i = 0;
        while (true) {
            if (!(i < intSparseArrayMap.size())) {
                break;
            }
            int i2 = i + 1;
            ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i);
            if (itemInfo.itemType == 6) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                if (this.mPackageName.equals(workspaceItemInfo.intent.getPackage()) && workspaceItemInfo.user.equals(this.mUser)) {
                    multiHashMap.addToList(ShortcutKey.fromIntent(workspaceItemInfo.intent, workspaceItemInfo.user), workspaceItemInfo);
                    hashSet2.add(workspaceItemInfo.getDeepShortcutId());
                }
            }
            i = i2;
        }
        ArrayList arrayList = new ArrayList();
        if (!multiHashMap.isEmpty()) {
            UserHandle userHandle = this.mUser;
            LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
            String str = this.mPackageName;
            ArrayList arrayList2 = new ArrayList(hashSet2);
            if (str != null) {
                shortcutQuery.setPackage(str);
                shortcutQuery.setShortcutIds(arrayList2);
            }
            shortcutQuery.setQueryFlags(11);
            try {
                queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
            } catch (IllegalStateException | SecurityException e) {
                Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                queryResult = ShortcutRequest.QueryResult.DEFAULT;
            }
            for (ShortcutInfo shortcutInfo : queryResult) {
                ShortcutKey fromInfo = ShortcutKey.fromInfo(shortcutInfo);
                List<WorkspaceItemInfo> list = (List) multiHashMap.remove(fromInfo);
                if (shortcutInfo.isPinned()) {
                    for (WorkspaceItemInfo workspaceItemInfo2 : list) {
                        workspaceItemInfo2.updateFromDeepShortcutInfo(shortcutInfo, context);
                        IconCache iconCache = launcherAppState.mIconCache;
                        iconCache.getShortcutIcon(workspaceItemInfo2, shortcutInfo, true, iconCache.mIsUsingFallbackIconCheck);
                        arrayList.add(workspaceItemInfo2);
                    }
                } else {
                    hashSet.add(fromInfo);
                }
            }
        }
        hashSet.addAll(multiHashMap.keySet());
        bindUpdatedWorkspaceItems(arrayList);
        if (!multiHashMap.isEmpty()) {
            deleteAndBindComponentsRemoved(new n(hashSet));
        }
        if (this.mUpdateIdMap) {
            bgDataModel.updateDeepShortcutCounts(this.mPackageName, this.mUser, this.mShortcuts);
            bindDeepShortcuts(bgDataModel);
        }
    }
}
