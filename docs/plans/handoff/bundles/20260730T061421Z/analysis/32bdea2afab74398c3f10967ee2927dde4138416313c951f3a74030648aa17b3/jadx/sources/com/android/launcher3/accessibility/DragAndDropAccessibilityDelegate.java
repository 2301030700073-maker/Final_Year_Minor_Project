package com.android.launcher3.accessibility;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.f.b.d;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DragAndDropAccessibilityDelegate extends d implements View.OnClickListener, View.OnHoverListener {
    public static final int[] sTempArray = new int[2];
    public final Context mContext;
    public final LauncherAccessibilityDelegate mDelegate;
    public final Rect mTempRect;
    public final CellLayout mView;

    public DragAndDropAccessibilityDelegate(CellLayout cellLayout) {
        super(cellLayout);
        this.mTempRect = new Rect();
        this.mView = cellLayout;
        Context context = cellLayout.getContext();
        this.mContext = context;
        this.mDelegate = Launcher.getLauncher(context).mAccessibilityDelegate;
    }

    public abstract String getConfirmationForIconDrop(int i);

    public final Rect getItemBounds(int i) {
        CellLayout cellLayout = this.mView;
        int i2 = cellLayout.mCountX;
        int i3 = i % i2;
        int i4 = i / i2;
        ItemInfo itemInfo = this.mDelegate.mDragInfo.info;
        cellLayout.cellToRect(i3, i4, itemInfo.spanX, itemInfo.spanY, this.mTempRect);
        return this.mTempRect;
    }

    public abstract String getLocationDescriptionForIconDrop(int i);

    @Override // b.f.b.d
    public int getVirtualViewAt(float f, float f2) {
        int[] iArr = sTempArray;
        if (f < RecentsState.NO_OFFSET || f2 < RecentsState.NO_OFFSET || f > this.mView.getMeasuredWidth() || f2 > this.mView.getMeasuredHeight()) {
            return RecyclerView.UNDEFINED_DURATION;
        }
        CellLayout cellLayout = this.mView;
        int paddingLeft = cellLayout.getPaddingLeft();
        int paddingTop = cellLayout.getPaddingTop();
        iArr[0] = (((int) f) - paddingLeft) / cellLayout.mCellWidth;
        iArr[1] = (((int) f2) - paddingTop) / cellLayout.mCellHeight;
        int i = cellLayout.mCountX;
        int i2 = cellLayout.mCountY;
        if (iArr[0] < 0) {
            iArr[0] = 0;
        }
        if (iArr[0] >= i) {
            iArr[0] = i - 1;
        }
        if (iArr[1] < 0) {
            iArr[1] = 0;
        }
        if (iArr[1] >= i2) {
            iArr[1] = i2 - 1;
        }
        return intersectsValidDropTarget((iArr[1] * this.mView.mCountX) + iArr[0]);
    }

    @Override // b.f.b.d
    public void getVisibleVirtualViews(List list) {
        CellLayout cellLayout = this.mView;
        int i = cellLayout.mCountX * cellLayout.mCountY;
        for (int i2 = 0; i2 < i; i2++) {
            if (intersectsValidDropTarget(i2) == i2) {
                list.add(Integer.valueOf(i2));
            }
        }
    }

    public abstract int intersectsValidDropTarget(int i);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        onPerformActionForVirtualView(this.mAccessibilityFocusedVirtualViewId, 16, null);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        return dispatchHoverEvent(motionEvent);
    }

    @Override // b.f.b.d
    public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
        if (i2 != 16 || i == Integer.MIN_VALUE) {
            return false;
        }
        this.mDelegate.handleAccessibleDrop(this.mView, getItemBounds(i), getConfirmationForIconDrop(i));
        return true;
    }

    @Override // b.f.b.d
    public void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
        if (i == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        accessibilityEvent.setContentDescription(this.mContext.getString(R.string.action_move_here));
    }

    @Override // b.f.b.d
    public void onPopulateNodeForVirtualView(int i, b.e.i.E.d dVar) {
        if (i == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        dVar.f753a.setContentDescription(getLocationDescriptionForIconDrop(i));
        dVar.f753a.setBoundsInParent(getItemBounds(i));
        dVar.f753a.addAction(16);
        dVar.f753a.setClickable(true);
        dVar.f753a.setFocusable(true);
    }
}
