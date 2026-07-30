package com.android.launcher3;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import c.a.a.Y0.g;
import c.a.c.a.a;
import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.touch.ItemLongClickListener;

/* loaded from: classes.dex */
public interface WorkspaceLayoutManager {
    default void addInScreen(View view, ItemInfo itemInfo) {
        addInScreen(view, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
    }

    default void addInScreenFromBind(View view, ItemInfo itemInfo) {
        int cellYFromOrder;
        int i;
        int i2 = itemInfo.cellX;
        int i3 = itemInfo.cellY;
        int i4 = itemInfo.container;
        if (i4 == -101 || i4 == -103) {
            int i5 = itemInfo.screenId;
            int cellXFromOrder = getHotseat().getCellXFromOrder(i5);
            cellYFromOrder = getHotseat().getCellYFromOrder(i5);
            i = cellXFromOrder;
        } else {
            i = i2;
            cellYFromOrder = i3;
        }
        addInScreen(view, itemInfo.container, itemInfo.screenId, i, cellYFromOrder, itemInfo.spanX, itemInfo.spanY);
    }

    Hotseat getHotseat();

    CellLayout getScreenWithId(int i);

    default void onAddDropTarget(DropTarget dropTarget) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    default void addInScreen(View view, int i, int i2, int i3, int i4, int i5, int i6) {
        CellLayout hotseat;
        CellLayout.LayoutParams layoutParams;
        if (i == -100 && getScreenWithId(i2) == null) {
            Log.e("Launcher.Workspace", "Skipping child, screenId " + i2 + " not found");
            new Throwable().printStackTrace();
            return;
        }
        if (i2 == -201) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        if (i == -101 || i == -103) {
            hotseat = getHotseat();
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).mFolderName.setVisibility(4);
            }
        } else {
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).mFolderName.setVisibility(0);
            }
            hotseat = getScreenWithId(i2);
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null || !(layoutParams2 instanceof CellLayout.LayoutParams)) {
            layoutParams = new CellLayout.LayoutParams(i3, i4, i5, i6);
        } else {
            layoutParams = (CellLayout.LayoutParams) layoutParams2;
            layoutParams.cellX = i3;
            layoutParams.cellY = i4;
            layoutParams.cellHSpan = i5;
            layoutParams.cellVSpan = i6;
        }
        if (i5 < 0 && i6 < 0) {
            layoutParams.isLockedToGrid = false;
        }
        if (!hotseat.addViewToCellLayout(view, -1, ((ItemInfo) view.getTag()).getViewId(), layoutParams, !(view instanceof Folder))) {
            StringBuilder f = a.f("Failed to add to item at (");
            f.append(layoutParams.cellX);
            f.append(",");
            f.append(layoutParams.cellY);
            f.append(") to CellLayout");
            Log.e("Launcher.Workspace", f.toString());
        }
        view.setHapticFeedbackEnabled(false);
        View.OnLongClickListener onLongClickListener = ItemLongClickListener.INSTANCE_WORKSPACE;
        view.setOnLongClickListener(g.f1711a);
        if (view instanceof DropTarget) {
            onAddDropTarget((DropTarget) view);
        }
    }
}
