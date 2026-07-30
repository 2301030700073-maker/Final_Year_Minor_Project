package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.launcher3.CheckLongPressHelper;

/* loaded from: classes.dex */
public class CheckLongPressHelper {
    public boolean mHasPerformedLongPress;
    public final View.OnLongClickListener mListener;
    public float mLongPressTimeoutFactor = 0.75f;
    public Runnable mPendingCheckForLongPress;
    public final float mSlop;
    public final View mView;

    public CheckLongPressHelper(View view, View.OnLongClickListener onLongClickListener) {
        this.mView = view;
        this.mListener = onLongClickListener;
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    public void cancelLongPress() {
        this.mHasPerformedLongPress = false;
        Runnable runnable = this.mPendingCheckForLongPress;
        if (runnable != null) {
            this.mView.removeCallbacks(runnable);
            this.mPendingCheckForLongPress = null;
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = false;
        if (action == 0) {
            cancelLongPress();
            this.mHasPerformedLongPress = false;
            if (this.mPendingCheckForLongPress == null) {
                this.mPendingCheckForLongPress = new Runnable() { // from class: c.a.a.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        CheckLongPressHelper.this.triggerLongPress();
                    }
                };
            }
            this.mView.postDelayed(this.mPendingCheckForLongPress, (long) (ViewConfiguration.getLongPressTimeout() * this.mLongPressTimeoutFactor));
            if (motionEvent.getToolType(0) == 2 && motionEvent.isButtonPressed(2)) {
                z = true;
            }
            if (z) {
                triggerLongPress();
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (!Utilities.pointInView(this.mView, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    cancelLongPress();
                    return;
                }
                if (this.mPendingCheckForLongPress != null) {
                    if (motionEvent.getToolType(0) == 2 && motionEvent.isButtonPressed(2)) {
                        z = true;
                    }
                    if (z) {
                        triggerLongPress();
                        return;
                    }
                    return;
                }
                return;
            }
            if (action != 3) {
                return;
            }
        }
        cancelLongPress();
    }

    public final void triggerLongPress() {
        if (this.mView.getParent() == null || !this.mView.hasWindowFocus()) {
            return;
        }
        if ((!this.mView.isPressed() || this.mListener == null) && !this.mHasPerformedLongPress) {
            View.OnLongClickListener onLongClickListener = this.mListener;
            if (onLongClickListener != null ? onLongClickListener.onLongClick(this.mView) : this.mView.performLongClick()) {
                this.mView.setPressed(false);
                this.mHasPerformedLongPress = true;
            }
            Runnable runnable = this.mPendingCheckForLongPress;
            if (runnable != null) {
                this.mView.removeCallbacks(runnable);
                this.mPendingCheckForLongPress = null;
            }
        }
    }
}
