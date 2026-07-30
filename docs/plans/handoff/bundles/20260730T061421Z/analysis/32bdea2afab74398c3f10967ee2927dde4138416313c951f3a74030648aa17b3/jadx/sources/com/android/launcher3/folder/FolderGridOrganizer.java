package com.android.launcher3.folder;

import android.graphics.Point;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FolderGridOrganizer {
    public int mCountX;
    public int mCountY;
    public final int mMaxCountX;
    public final int mMaxCountY;
    public final int mMaxItemsPerPage;
    public int mNumItemsInFolder;
    public final Point mPoint = new Point();
    public boolean mDisplayingUpperLeftQuadrant = false;

    public FolderGridOrganizer(InvariantDeviceProfile invariantDeviceProfile) {
        int i = invariantDeviceProfile.numFolderColumns;
        this.mMaxCountX = i;
        int i2 = invariantDeviceProfile.numFolderRows;
        this.mMaxCountY = i2;
        this.mMaxItemsPerPage = i * i2;
    }

    public Point getPosForRank(int i) {
        int i2 = i % this.mMaxItemsPerPage;
        Point point = this.mPoint;
        int i3 = this.mCountX;
        point.x = i2 % i3;
        point.y = i2 / i3;
        return point;
    }

    public boolean isItemInPreview(int i) {
        return isItemInPreview(0, i);
    }

    public ArrayList previewItemsForPage(int i, List list) {
        ArrayList arrayList = new ArrayList();
        int i2 = this.mCountX * this.mCountY;
        int i3 = i2 * i;
        int min = Math.min(i2 + i3, list.size());
        int i4 = 0;
        while (i3 < min) {
            if (isItemInPreview(i, i4)) {
                arrayList.add(list.get(i3));
            }
            if (arrayList.size() == 4) {
                break;
            }
            i3++;
            i4++;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.launcher3.folder.FolderGridOrganizer setContentSize(int r7) {
        /*
            r6 = this;
            int r0 = r6.mNumItemsInFolder
            if (r7 == r0) goto L6b
            int r0 = r6.mCountX
            int r1 = r6.mCountY
            int r2 = r6.mMaxItemsPerPage
            r3 = 0
            r4 = 1
            if (r7 < r2) goto L14
            int r0 = r6.mMaxCountX
            int r1 = r6.mMaxCountY
            r2 = r4
            goto L15
        L14:
            r2 = r3
        L15:
            if (r2 != 0) goto L5f
            int r2 = r0 * r1
            if (r2 >= r7) goto L38
            if (r0 <= r1) goto L21
            int r2 = r6.mMaxCountY
            if (r1 != r2) goto L28
        L21:
            int r2 = r6.mMaxCountX
            if (r0 >= r2) goto L28
            int r2 = r0 + 1
            goto L31
        L28:
            int r2 = r6.mMaxCountY
            if (r1 >= r2) goto L30
            int r2 = r1 + 1
            r5 = r0
            goto L33
        L30:
            r2 = r0
        L31:
            r5 = r2
            r2 = r1
        L33:
            if (r2 != 0) goto L54
            int r2 = r2 + 1
            goto L54
        L38:
            int r2 = r1 + (-1)
            int r5 = r2 * r0
            if (r5 < r7) goto L46
            if (r1 < r0) goto L46
            int r2 = java.lang.Math.max(r3, r2)
            r5 = r0
            goto L54
        L46:
            int r2 = r0 + (-1)
            int r5 = r2 * r1
            if (r5 < r7) goto L51
            int r2 = java.lang.Math.max(r3, r2)
            goto L52
        L51:
            r2 = r0
        L52:
            r5 = r2
            r2 = r1
        L54:
            if (r5 != r0) goto L5a
            if (r2 != r1) goto L5a
            r0 = r4
            goto L5b
        L5a:
            r0 = r3
        L5b:
            r1 = r2
            r2 = r0
            r0 = r5
            goto L15
        L5f:
            r6.mCountX = r0
            r6.mCountY = r1
            r0 = 4
            if (r7 <= r0) goto L67
            r3 = r4
        L67:
            r6.mDisplayingUpperLeftQuadrant = r3
            r6.mNumItemsInFolder = r7
        L6b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.FolderGridOrganizer.setContentSize(int):com.android.launcher3.folder.FolderGridOrganizer");
    }

    public FolderGridOrganizer setFolderInfo(FolderInfo folderInfo) {
        setContentSize(folderInfo.contents.size());
        return this;
    }

    public boolean updateRankAndPos(ItemInfo itemInfo, int i) {
        Point posForRank = getPosForRank(i);
        if (posForRank.equals(itemInfo.cellX, itemInfo.cellY) && i == itemInfo.rank) {
            return false;
        }
        itemInfo.rank = i;
        itemInfo.cellX = posForRank.x;
        itemInfo.cellY = posForRank.y;
        return true;
    }

    public boolean isItemInPreview(int i, int i2) {
        if (i <= 0 && !this.mDisplayingUpperLeftQuadrant) {
            return i2 < 4;
        }
        int i3 = this.mCountX;
        return i2 % i3 < 2 && i2 / i3 < 2;
    }
}
