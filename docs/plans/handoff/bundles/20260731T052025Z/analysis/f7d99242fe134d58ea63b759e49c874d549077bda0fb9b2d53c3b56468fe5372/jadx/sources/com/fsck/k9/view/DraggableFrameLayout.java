package com.fsck.k9.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableFrameLayout extends FrameLayout {
    public boolean isDragged;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context) {
        super(context);
        context.getClass();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (this.isDragged) {
            View.mergeDrawableStates(onCreateDrawableState, DraggableFrameLayoutKt.DRAGGED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    public final void setDragged(boolean z) {
        this.isDragged = z;
        refreshDrawableState();
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
    }
}
