package com.android.launcher3.touch;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.quickstep.fallback.RecentsState;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class BaseSwipeDetector {
    public static final PointF sTempPoint = new PointF();
    public boolean mIgnoreSlopWhenSettling;
    public final boolean mIsRtl;
    public boolean mIsSettingState;
    public final float mMaxVelocity;
    public final float mTouchSlop;
    public VelocityTracker mVelocityTracker;
    public final PointF mDownPos = new PointF();
    public final PointF mLastPos = new PointF();
    public final Queue mSetStateQueue = new LinkedList();
    public int mActivePointerId = -1;
    public PointF mLastDisplacement = new PointF();
    public PointF mDisplacement = new PointF();
    public PointF mSubtractDisplacement = new PointF();
    public ScrollState mState = ScrollState.IDLE;

    public enum ScrollState {
        IDLE,
        DRAGGING,
        SETTLING
    }

    public BaseSwipeDetector(ViewConfiguration viewConfiguration, boolean z) {
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mIsRtl = z;
    }

    public static long calculateDuration(float f, float f2) {
        return (long) Math.max(100.0f, (1200.0f / Math.max(2.0f, Math.abs(f * 0.5f))) * Math.max(0.2f, f2));
    }

    public int getDownX() {
        return (int) this.mDownPos.x;
    }

    public int getDownY() {
        return (int) this.mDownPos.y;
    }

    public boolean isDraggingOrSettling() {
        ScrollState scrollState = this.mState;
        return scrollState == ScrollState.DRAGGING || scrollState == ScrollState.SETTLING;
    }

    public boolean isFling(float f) {
        return Math.abs(f) > 1.0f;
    }

    public boolean isIdleState() {
        return this.mState == ScrollState.IDLE;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        PointF pointF;
        PointF pointF2;
        VelocityTracker velocityTracker;
        ScrollState scrollState = ScrollState.SETTLING;
        ScrollState scrollState2 = ScrollState.DRAGGING;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.mVelocityTracker) != null) {
            velocityTracker.clear();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex != -1) {
                        this.mDisplacement.set(motionEvent.getX(findPointerIndex) - this.mDownPos.x, motionEvent.getY(findPointerIndex) - this.mDownPos.y);
                        if (this.mIsRtl) {
                            PointF pointF3 = this.mDisplacement;
                            pointF3.x = -pointF3.x;
                        }
                        if (this.mState != scrollState2 && shouldScrollStart(this.mDisplacement)) {
                            a(scrollState2);
                        }
                        if (this.mState == scrollState2 && (pointF = this.mDisplacement) != (pointF2 = this.mLastDisplacement)) {
                            pointF2.set(pointF);
                            PointF pointF4 = sTempPoint;
                            PointF pointF5 = this.mDisplacement;
                            float f = pointF5.x;
                            PointF pointF6 = this.mSubtractDisplacement;
                            pointF4.set(f - pointF6.x, pointF5.y - pointF6.y);
                            reportDraggingInternal(sTempPoint, motionEvent);
                        }
                        this.mLastPos.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                            int i = actionIndex == 0 ? 1 : 0;
                            this.mDownPos.set(motionEvent.getX(i) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(i) - (this.mLastPos.y - this.mDownPos.y));
                            this.mLastPos.set(motionEvent.getX(i), motionEvent.getY(i));
                            this.mActivePointerId = motionEvent.getPointerId(i);
                        }
                    }
                }
            }
            if (this.mState == scrollState2) {
                a(scrollState);
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        } else {
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            this.mLastPos.set(this.mDownPos);
            this.mLastDisplacement.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
            this.mDisplacement.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
            if (this.mState == scrollState && this.mIgnoreSlopWhenSettling) {
                a(scrollState2);
            }
        }
        return true;
    }

    public abstract void reportDragEndInternal(PointF pointF);

    public abstract void reportDragStartInternal(boolean z);

    public abstract void reportDraggingInternal(PointF pointF, MotionEvent motionEvent);

    /* renamed from: setState, reason: merged with bridge method [inline-methods] */
    public final void a(final ScrollState scrollState) {
        ScrollState scrollState2 = ScrollState.SETTLING;
        if (this.mIsSettingState) {
            this.mSetStateQueue.add(new Runnable() { // from class: c.a.a.Y0.b
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeDetector.this.a(scrollState);
                }
            });
            return;
        }
        this.mIsSettingState = true;
        if (scrollState == ScrollState.DRAGGING) {
            if (this.mState == scrollState2 && this.mIgnoreSlopWhenSettling) {
                this.mSubtractDisplacement.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
            } else {
                this.mSubtractDisplacement.x = this.mDisplacement.x > RecentsState.NO_OFFSET ? this.mTouchSlop : -this.mTouchSlop;
                PointF pointF = this.mSubtractDisplacement;
                float f = this.mDisplacement.y;
                float f2 = this.mTouchSlop;
                if (f <= RecentsState.NO_OFFSET) {
                    f2 = -f2;
                }
                pointF.y = f2;
            }
            ScrollState scrollState3 = this.mState;
            if (scrollState3 == ScrollState.IDLE) {
                reportDragStartInternal(false);
            } else if (scrollState3 == scrollState2) {
                reportDragStartInternal(true);
            }
        }
        if (scrollState == scrollState2) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
            PointF pointF2 = new PointF(this.mVelocityTracker.getXVelocity() / 1000.0f, this.mVelocityTracker.getYVelocity() / 1000.0f);
            if (this.mIsRtl) {
                pointF2.x = -pointF2.x;
            }
            reportDragEndInternal(pointF2);
        }
        this.mState = scrollState;
        this.mIsSettingState = false;
        if (this.mSetStateQueue.isEmpty()) {
            return;
        }
        ((Runnable) this.mSetStateQueue.remove()).run();
    }

    public abstract boolean shouldScrollStart(PointF pointF);
}
