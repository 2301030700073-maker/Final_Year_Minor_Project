package com.android.launcher3.model;

import android.util.LongSparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class AddWorkspaceItemsTask extends BaseModelUpdateTask {
    public final List mItemList;

    public AddWorkspaceItemsTask(List list) {
        this.mItemList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00eb A[Catch: all -> 0x017c, TryCatch #0 {, blocks: (B:8:0x001c, B:9:0x002b, B:11:0x0032, B:13:0x0040, B:16:0x005e, B:18:0x0062, B:20:0x0066, B:23:0x006e, B:27:0x0044, B:33:0x0051, B:40:0x0072, B:42:0x0076, B:43:0x008e, B:45:0x0094, B:47:0x00b7, B:49:0x00bb, B:52:0x00c0, B:54:0x00c4, B:55:0x00d5, B:57:0x00d9, B:59:0x00e2, B:61:0x00eb, B:63:0x00f9, B:65:0x0107, B:71:0x011f, B:74:0x013e, B:85:0x0115, B:75:0x0155, B:92:0x00cc, B:93:0x00d3, B:96:0x016c), top: B:7:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f9 A[Catch: all -> 0x017c, TryCatch #0 {, blocks: (B:8:0x001c, B:9:0x002b, B:11:0x0032, B:13:0x0040, B:16:0x005e, B:18:0x0062, B:20:0x0066, B:23:0x006e, B:27:0x0044, B:33:0x0051, B:40:0x0072, B:42:0x0076, B:43:0x008e, B:45:0x0094, B:47:0x00b7, B:49:0x00bb, B:52:0x00c0, B:54:0x00c4, B:55:0x00d5, B:57:0x00d9, B:59:0x00e2, B:61:0x00eb, B:63:0x00f9, B:65:0x0107, B:71:0x011f, B:74:0x013e, B:85:0x0115, B:75:0x0155, B:92:0x00cc, B:93:0x00d3, B:96:0x016c), top: B:7:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f4  */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.android.launcher3.icons.IconCache] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.android.launcher3.model.data.ItemInfo, com.android.launcher3.model.data.ItemInfoWithIcon, com.android.launcher3.model.data.WorkspaceItemInfo] */
    @Override // com.android.launcher3.model.BaseModelUpdateTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(com.android.launcher3.LauncherAppState r24, com.android.launcher3.model.BgDataModel r25, com.android.launcher3.model.AllAppsList r26) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.AddWorkspaceItemsTask.execute(com.android.launcher3.LauncherAppState, com.android.launcher3.model.BgDataModel, com.android.launcher3.model.AllAppsList):void");
    }

    public final boolean findNextAvailableIconSpaceInScreen(LauncherAppState launcherAppState, ArrayList arrayList, int[] iArr, int i, int i2) {
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
        GridOccupancy gridOccupancy = new GridOccupancy(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                gridOccupancy.markCells((ItemInfo) it.next(), true);
            }
        }
        return gridOccupancy.findVacantCell(iArr, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] findSpaceForItem(LauncherAppState launcherAppState, BgDataModel bgDataModel, IntArray intArray, IntArray intArray2, int i, int i2) {
        int i3;
        boolean z;
        LongSparseArray longSparseArray = new LongSparseArray();
        synchronized (bgDataModel) {
            IntSparseArrayMap intSparseArrayMap = bgDataModel.itemsIdMap;
            Objects.requireNonNull(intSparseArrayMap);
            int i4 = 0;
            while (true) {
                if ((i4 < intSparseArrayMap.size()) != true) {
                    break;
                }
                int i5 = i4 + 1;
                ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i4);
                if (itemInfo.container == -100) {
                    ArrayList arrayList = (ArrayList) longSparseArray.get(itemInfo.screenId);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        longSparseArray.put(itemInfo.screenId, arrayList);
                    }
                    arrayList.add(itemInfo);
                }
                i4 = i5;
            }
        }
        int[] iArr = new int[2];
        int i6 = intArray.mSize;
        int i7 = !intArray.isEmpty() ? 1 : 0;
        if (i7 < i6) {
            i3 = intArray.get(i7);
            z = findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList) longSparseArray.get(i3), iArr, i, i2);
        } else {
            i3 = 0;
            z = false;
        }
        if (!z) {
            int i8 = 1;
            while (true) {
                if (i8 >= i6) {
                    break;
                }
                i3 = intArray.get(i8);
                int i9 = i8;
                if (findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList) longSparseArray.get(i3), iArr, i, i2)) {
                    z = true;
                    break;
                }
                i8 = i9 + 1;
            }
        }
        if (!z) {
            i3 = LauncherSettings$Settings.call(launcherAppState.mContext.getContentResolver(), "generate_new_screen_id").getInt("value");
            intArray.add(intArray.mSize, i3);
            intArray2.add(intArray2.mSize, i3);
            if (!findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList) longSparseArray.get(i3), iArr, i, i2)) {
                throw new RuntimeException("Can't find space to add the item");
            }
        }
        return new int[]{i3, iArr[0], iArr[1]};
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c5, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shortcutExists(com.android.launcher3.model.BgDataModel r12, android.content.Intent r13, android.os.UserHandle r14) {
        /*
            r11 = this;
            r11 = 1
            if (r13 != 0) goto L4
            return r11
        L4:
            android.content.ComponentName r0 = r13.getComponent()
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L3e
            android.content.ComponentName r0 = r13.getComponent()
            java.lang.String r0 = r0.getPackageName()
            java.lang.String r3 = r13.getPackage()
            if (r3 == 0) goto L2c
            java.lang.String r3 = r13.toUri(r2)
            android.content.Intent r4 = new android.content.Intent
            r4.<init>(r13)
            android.content.Intent r1 = r4.setPackage(r1)
            java.lang.String r1 = r1.toUri(r2)
            goto L49
        L2c:
            android.content.Intent r1 = new android.content.Intent
            r1.<init>(r13)
            android.content.Intent r1 = r1.setPackage(r0)
            java.lang.String r3 = r1.toUri(r2)
            java.lang.String r1 = r13.toUri(r2)
            goto L49
        L3e:
            java.lang.String r3 = r13.toUri(r2)
            java.lang.String r0 = r13.toUri(r2)
            r10 = r1
            r1 = r0
            r0 = r10
        L49:
            boolean r4 = com.android.launcher3.util.PackageManagerHelper.isLauncherAppTarget(r13)
            monitor-enter(r12)
            com.android.launcher3.util.IntSparseArrayMap r5 = r12.itemsIdMap     // Catch: java.lang.Throwable -> Lca
            java.util.Objects.requireNonNull(r5)     // Catch: java.lang.Throwable -> Lca
            r6 = r2
        L54:
            int r7 = r5.size()     // Catch: java.lang.Throwable -> Lca
            if (r6 >= r7) goto L5c
            r7 = r11
            goto L5d
        L5c:
            r7 = r2
        L5d:
            if (r7 == 0) goto Lc8
            int r7 = r6 + 1
            java.lang.Object r6 = r5.valueAt(r6)     // Catch: java.lang.Throwable -> Lca
            com.android.launcher3.model.data.ItemInfo r6 = (com.android.launcher3.model.data.ItemInfo) r6     // Catch: java.lang.Throwable -> Lca
            boolean r8 = r6 instanceof com.android.launcher3.model.data.WorkspaceItemInfo     // Catch: java.lang.Throwable -> Lca
            if (r8 == 0) goto Lc6
            r8 = r6
            com.android.launcher3.model.data.WorkspaceItemInfo r8 = (com.android.launcher3.model.data.WorkspaceItemInfo) r8     // Catch: java.lang.Throwable -> Lca
            android.content.Intent r9 = r6.getIntent()     // Catch: java.lang.Throwable -> Lca
            if (r9 == 0) goto Lc6
            android.os.UserHandle r9 = r8.user     // Catch: java.lang.Throwable -> Lca
            boolean r9 = r9.equals(r14)     // Catch: java.lang.Throwable -> Lca
            if (r9 == 0) goto Lc6
            android.content.Intent r9 = new android.content.Intent     // Catch: java.lang.Throwable -> Lca
            android.content.Intent r6 = r6.getIntent()     // Catch: java.lang.Throwable -> Lca
            r9.<init>(r6)     // Catch: java.lang.Throwable -> Lca
            android.graphics.Rect r6 = r13.getSourceBounds()     // Catch: java.lang.Throwable -> Lca
            r9.setSourceBounds(r6)     // Catch: java.lang.Throwable -> Lca
            java.lang.String r6 = r9.toUri(r2)     // Catch: java.lang.Throwable -> Lca
            boolean r9 = r3.equals(r6)     // Catch: java.lang.Throwable -> Lca
            if (r9 != 0) goto Lc4
            boolean r6 = r1.equals(r6)     // Catch: java.lang.Throwable -> Lca
            if (r6 == 0) goto L9d
            goto Lc4
        L9d:
            if (r4 == 0) goto Lc6
            boolean r6 = r8.isPromise()     // Catch: java.lang.Throwable -> Lca
            if (r6 == 0) goto Lc6
            r6 = 2
            boolean r6 = r8.hasStatusFlag(r6)     // Catch: java.lang.Throwable -> Lca
            if (r6 == 0) goto Lc6
            android.content.ComponentName r6 = r8.getTargetComponent()     // Catch: java.lang.Throwable -> Lca
            if (r6 == 0) goto Lc6
            if (r0 == 0) goto Lc6
            android.content.ComponentName r6 = r8.getTargetComponent()     // Catch: java.lang.Throwable -> Lca
            java.lang.String r6 = r6.getPackageName()     // Catch: java.lang.Throwable -> Lca
            boolean r6 = r0.equals(r6)     // Catch: java.lang.Throwable -> Lca
            if (r6 == 0) goto Lc6
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lca
            return r11
        Lc4:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lca
            return r11
        Lc6:
            r6 = r7
            goto L54
        Lc8:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lca
            return r2
        Lca:
            r11 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lca
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.AddWorkspaceItemsTask.shortcutExists(com.android.launcher3.model.BgDataModel, android.content.Intent, android.os.UserHandle):boolean");
    }
}
