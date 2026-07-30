package com.android.launcher3.accessibility;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import b.e.i.E.d;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;
import java.util.Iterator;

/* loaded from: classes.dex */
public class WorkspaceAccessibilityHelper extends DragAndDropAccessibilityDelegate {
    public final int[] mTempCords;
    public final Rect mTempRect;

    public WorkspaceAccessibilityHelper(CellLayout cellLayout) {
        super(cellLayout);
        this.mTempRect = new Rect();
        this.mTempCords = new int[2];
    }

    public static String getDescriptionForDropOver(View view, Context context) {
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (itemInfo instanceof WorkspaceItemInfo) {
            return context.getString(R.string.create_folder_with, itemInfo.title);
        }
        if (!(itemInfo instanceof FolderInfo)) {
            return "";
        }
        if (TextUtils.isEmpty(itemInfo.title)) {
            WorkspaceItemInfo workspaceItemInfo = null;
            Iterator it = ((FolderInfo) itemInfo).contents.iterator();
            while (it.hasNext()) {
                WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) it.next();
                if (workspaceItemInfo == null || workspaceItemInfo.rank > workspaceItemInfo2.rank) {
                    workspaceItemInfo = workspaceItemInfo2;
                }
            }
            if (workspaceItemInfo != null) {
                return context.getString(R.string.add_to_folder_with_app, workspaceItemInfo.title);
            }
        }
        return context.getString(R.string.add_to_folder, itemInfo.title);
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public String getConfirmationForIconDrop(int i) {
        CellLayout cellLayout = this.mView;
        int i2 = cellLayout.mCountX;
        int i3 = i % i2;
        int i4 = i / i2;
        LauncherAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        View childAt = cellLayout.getChildAt(i3, i4);
        if (childAt == null || childAt == dragInfo.item) {
            return this.mContext.getString(R.string.item_moved);
        }
        ItemInfo itemInfo = (ItemInfo) childAt.getTag();
        return ((itemInfo instanceof AppInfo) || (itemInfo instanceof WorkspaceItemInfo)) ? this.mContext.getString(R.string.folder_created) : itemInfo instanceof FolderInfo ? this.mContext.getString(R.string.added_to_folder) : "";
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public String getLocationDescriptionForIconDrop(int i) {
        CellLayout cellLayout = this.mView;
        int i2 = cellLayout.mCountX;
        int i3 = i % i2;
        int i4 = i / i2;
        LauncherAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        View childAt = cellLayout.getChildAt(i3, i4);
        return (childAt == null || childAt == dragInfo.item) ? this.mView.getItemMoveDescription(i3, i4) : getDescriptionForDropOver(childAt, this.mContext);
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public int intersectsValidDropTarget(int i) {
        LauncherAccessibilityDelegate.DragType dragType = LauncherAccessibilityDelegate.DragType.WIDGET;
        CellLayout cellLayout = this.mView;
        int i2 = cellLayout.mCountX;
        int i3 = cellLayout.mCountY;
        int i4 = i % i2;
        int i5 = i / i2;
        LauncherAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        if (dragInfo.dragType == dragType) {
            if (!(cellLayout.mContainerType == 0)) {
                return -1;
            }
        }
        if (dragInfo.dragType != dragType) {
            View childAt = this.mView.getChildAt(i4, i5);
            if (childAt == null || childAt == dragInfo.item) {
                return i;
            }
            if (dragInfo.dragType != LauncherAccessibilityDelegate.DragType.FOLDER) {
                ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                if ((itemInfo instanceof AppInfo) || (itemInfo instanceof FolderInfo) || (itemInfo instanceof WorkspaceItemInfo)) {
                    return i;
                }
            }
            return -1;
        }
        ItemInfo itemInfo2 = dragInfo.info;
        int i6 = itemInfo2.spanX;
        int i7 = itemInfo2.spanY;
        for (int i8 = 0; i8 < i6; i8++) {
            for (int i9 = 0; i9 < i7; i9++) {
                int i10 = i4 - i8;
                int i11 = i5 - i9;
                if (i10 >= 0 && i11 >= 0) {
                    boolean z = true;
                    for (int i12 = i10; i12 < i10 + i6 && z; i12++) {
                        for (int i13 = i11; i13 < i11 + i7; i13++) {
                            if (i12 >= i2 || i13 >= i3 || this.mView.isOccupied(i12, i13)) {
                                z = false;
                                break;
                            }
                        }
                    }
                    if (z) {
                        return (i2 * i11) + i10;
                    }
                }
            }
        }
        return -1;
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate, b.f.b.d
    public void onPopulateNodeForVirtualView(int i, d dVar) {
        super.onPopulateNodeForVirtualView(i, dVar);
        DragLayer dragLayer = Launcher.getLauncher(this.mView.getContext()).mDragLayer;
        int[] iArr = this.mTempCords;
        iArr[1] = 0;
        iArr[0] = 0;
        float descendantCoordRelativeToSelf = dragLayer.getDescendantCoordRelativeToSelf((View) this.mView, iArr);
        dVar.f753a.getBoundsInParent(this.mTempRect);
        Rect rect = this.mTempRect;
        int[] iArr2 = this.mTempCords;
        rect.left = iArr2[0] + ((int) (rect.left * descendantCoordRelativeToSelf));
        rect.right = iArr2[0] + ((int) (rect.right * descendantCoordRelativeToSelf));
        rect.top = iArr2[1] + ((int) (rect.top * descendantCoordRelativeToSelf));
        rect.bottom = iArr2[1] + ((int) (rect.bottom * descendantCoordRelativeToSelf));
        dVar.f753a.setBoundsInScreen(rect);
    }
}
