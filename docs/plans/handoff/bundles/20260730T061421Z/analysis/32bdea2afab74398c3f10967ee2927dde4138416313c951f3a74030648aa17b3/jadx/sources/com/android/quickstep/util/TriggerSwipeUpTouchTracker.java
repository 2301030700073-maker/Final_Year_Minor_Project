package com.android.quickstep.util;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;

/* loaded from: classes.dex */
public class TriggerSwipeUpTouchTracker {
    public final boolean mDisableHorizontalSwipe;
    public final PointF mDownPos = new PointF();
    public boolean mInterceptedTouch;
    public final float mMinFlingVelocity;
    public final NavBarPosition mNavBarPosition;
    public final Runnable mOnInterceptTouch;
    public final OnSwipeUpListener mOnSwipeUp;
    public final float mSquaredTouchSlop;
    public VelocityTracker mVelocityTracker;

    public interface OnSwipeUpListener {
        void onSwipeUp(boolean z, PointF pointF);

        void onSwipeUpCancelled();
    }

    public TriggerSwipeUpTouchTracker(Context context, boolean z, NavBarPosition navBarPosition, Runnable runnable, OnSwipeUpListener onSwipeUpListener) {
        this.mSquaredTouchSlop = Utilities.squaredTouchSlop(context);
        this.mMinFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mNavBarPosition = navBarPosition;
        this.mDisableHorizontalSwipe = z;
        this.mOnInterceptTouch = runnable;
        this.mOnSwipeUp = onSwipeUpListener;
        init();
    }

    private void endTouchTracking() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (r2 > com.android.quickstep.fallback.RecentsState.NO_OFFSET) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (com.android.launcher3.Utilities.squaredHypot(r6, r8.getY() - r7.mDownPos.y) >= r7.mSquaredTouchSlop) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void onGestureEnd(android.view.MotionEvent r8) {
        /*
            r7 = this;
            android.view.VelocityTracker r0 = r7.mVelocityTracker
            r1 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r1)
            android.view.VelocityTracker r0 = r7.mVelocityTracker
            float r0 = r0.getXVelocity()
            android.view.VelocityTracker r1 = r7.mVelocityTracker
            float r1 = r1.getYVelocity()
            com.android.quickstep.util.NavBarPosition r2 = r7.mNavBarPosition
            boolean r2 = r2.isRightEdge()
            if (r2 == 0) goto L1d
            float r2 = -r0
            goto L28
        L1d:
            com.android.quickstep.util.NavBarPosition r2 = r7.mNavBarPosition
            boolean r2 = r2.isLeftEdge()
            if (r2 == 0) goto L27
            r2 = r0
            goto L28
        L27:
            float r2 = -r1
        L28:
            float r3 = java.lang.Math.abs(r2)
            float r4 = r7.mMinFlingVelocity
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            r4 = 1
            r5 = 0
            if (r3 < 0) goto L36
            r3 = r4
            goto L37
        L36:
            r3 = r5
        L37:
            r6 = 0
            if (r3 == 0) goto L41
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L3f
            goto L63
        L3f:
            r4 = r5
            goto L63
        L41:
            boolean r2 = r7.mDisableHorizontalSwipe
            if (r2 == 0) goto L46
            goto L50
        L46:
            float r2 = r8.getX()
            android.graphics.PointF r6 = r7.mDownPos
            float r6 = r6.x
            float r6 = r2 - r6
        L50:
            float r8 = r8.getY()
            android.graphics.PointF r2 = r7.mDownPos
            float r2 = r2.y
            float r8 = r8 - r2
            float r8 = com.android.launcher3.Utilities.squaredHypot(r6, r8)
            float r2 = r7.mSquaredTouchSlop
            int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r8 < 0) goto L3f
        L63:
            com.android.quickstep.util.TriggerSwipeUpTouchTracker$OnSwipeUpListener r7 = r7.mOnSwipeUp
            if (r7 == 0) goto L75
            if (r4 == 0) goto L72
            android.graphics.PointF r8 = new android.graphics.PointF
            r8.<init>(r0, r1)
            r7.onSwipeUp(r3, r8)
            goto L75
        L72:
            r7.onSwipeUpCancelled()
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.util.TriggerSwipeUpTouchTracker.onGestureEnd(android.view.MotionEvent):void");
    }

    public void init() {
        this.mInterceptedTouch = false;
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    public boolean interceptedTouch() {
        return this.mInterceptedTouch;
    }

    public void onMotionEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            return;
        }
        if (actionMasked == 1) {
            onGestureEnd(motionEvent);
            endTouchTracking();
            return;
        }
        if (actionMasked != 2) {
            if (actionMasked != 3) {
                return;
            }
            endTouchTracking();
            return;
        }
        if (this.mInterceptedTouch) {
            return;
        }
        float x = motionEvent.getX() - this.mDownPos.x;
        float y = motionEvent.getY() - this.mDownPos.y;
        if (Utilities.squaredHypot(x, y) >= this.mSquaredTouchSlop) {
            if (this.mDisableHorizontalSwipe && Math.abs(x) > Math.abs(y)) {
                endTouchTracking();
                return;
            }
            this.mInterceptedTouch = true;
            Runnable runnable = this.mOnInterceptTouch;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
