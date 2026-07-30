package com.android.launcher3.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;

/* loaded from: classes.dex */
public class ListenerView extends AbstractFloatingView {
    public Runnable mCloseListener;

    public ListenerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean canInterceptEventsInSystemGestureRegion() {
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (this.mIsOpen) {
            Runnable runnable = this.mCloseListener;
            if (runnable != null) {
                runnable.run();
            } else if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).removeView(this);
            }
        }
        this.mIsOpen = false;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 256) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsOpen = true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            handleClose(false);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsOpen = false;
    }
}
