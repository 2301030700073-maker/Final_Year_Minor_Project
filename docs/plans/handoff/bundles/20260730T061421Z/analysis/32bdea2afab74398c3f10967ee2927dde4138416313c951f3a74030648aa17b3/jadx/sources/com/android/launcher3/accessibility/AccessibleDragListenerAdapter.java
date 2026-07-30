package com.android.launcher3.accessibility;

import android.view.View;
import android.view.ViewGroup;
import b.e.i.q;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import java.util.function.Function;

/* loaded from: classes.dex */
public class AccessibleDragListenerAdapter implements DragController.DragListener, ViewGroup.OnHierarchyChangeListener {
    public final Function mDelegateFactory;
    public final ViewGroup mViewGroup;

    public AccessibleDragListenerAdapter(ViewGroup viewGroup, Function function) {
        this.mViewGroup = viewGroup;
        this.mDelegateFactory = function;
    }

    public void enableAccessibleDrag(boolean z) {
        for (int i = 0; i < this.mViewGroup.getChildCount(); i++) {
            setEnableForLayout((CellLayout) this.mViewGroup.getChildAt(i), z);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view == this.mViewGroup) {
            setEnableForLayout((CellLayout) view2, true);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        if (view == this.mViewGroup) {
            setEnableForLayout((CellLayout) view2, false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mViewGroup.setOnHierarchyChangeListener(null);
        enableAccessibleDrag(false);
        Launcher.getLauncher(this.mViewGroup.getContext()).mDragController.mListeners.remove(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.mViewGroup.setOnHierarchyChangeListener(this);
        enableAccessibleDrag(true);
    }

    public final void setEnableForLayout(CellLayout cellLayout, boolean z) {
        DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate = z ? (DragAndDropAccessibilityDelegate) this.mDelegateFactory.apply(cellLayout) : null;
        cellLayout.setOnClickListener(dragAndDropAccessibilityDelegate);
        q.D(cellLayout, dragAndDropAccessibilityDelegate);
        cellLayout.mTouchHelper = dragAndDropAccessibilityDelegate;
        int i = dragAndDropAccessibilityDelegate != null ? 1 : 2;
        cellLayout.setImportantForAccessibility(i);
        cellLayout.mShortcutsAndWidgets.setImportantForAccessibility(i);
        if (cellLayout.getParent() != null) {
            cellLayout.getParent().notifySubtreeAccessibilityStateChanged(cellLayout, cellLayout, 1);
        }
    }
}
