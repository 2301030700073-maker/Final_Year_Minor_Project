package com.android.launcher3.accessibility;

import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.FolderPagedView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class FolderAccessibilityHelper extends DragAndDropAccessibilityDelegate {
    public final FolderPagedView mParent;
    public final int mStartPosition;

    public FolderAccessibilityHelper(CellLayout cellLayout) {
        super(cellLayout);
        FolderPagedView folderPagedView = (FolderPagedView) cellLayout.getParent();
        this.mParent = folderPagedView;
        this.mStartPosition = folderPagedView.indexOfChild(cellLayout) * cellLayout.mCountX * cellLayout.mCountY;
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public String getConfirmationForIconDrop(int i) {
        return this.mContext.getString(R.string.item_moved);
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public String getLocationDescriptionForIconDrop(int i) {
        return this.mContext.getString(R.string.move_to_position, Integer.valueOf(i + this.mStartPosition + 1));
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public int intersectsValidDropTarget(int i) {
        return Math.min(i, (this.mParent.mAllocatedContentSize - this.mStartPosition) - 1);
    }
}
