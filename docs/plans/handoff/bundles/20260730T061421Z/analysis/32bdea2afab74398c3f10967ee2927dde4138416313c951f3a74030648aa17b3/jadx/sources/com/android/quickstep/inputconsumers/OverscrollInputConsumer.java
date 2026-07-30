package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.plugins.OverscrollPlugin;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class OverscrollInputConsumer extends DelegateInputConsumer {
    public static final boolean DEBUG_LOGS_ENABLED = false;
    public static final String TAG = "OverscrollInputConsumer";
    public int mActivePointerId;
    public final int mAngleThreshold;
    public final PointF mDownPos;
    public final int mFlingDistanceThresholdPx;
    public final int mFlingVelocityThresholdPx;
    public final GestureState mGestureState;
    public final PointF mLastPos;
    public boolean mPassedActiveThreshold;
    public boolean mPassedSlop;
    public final OverscrollPlugin mPlugin;
    public RecentsView mRecentsView;
    public final float mSquaredActiveThreshold;
    public final float mSquaredFinishThreshold;
    public final float mSquaredSlop;
    public final PointF mStartDragPos;
    public boolean mThisDownIsIgnored;

    public OverscrollInputConsumer(Context context, GestureState gestureState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat, OverscrollPlugin overscrollPlugin) {
        super(inputConsumer, inputMonitorCompat);
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mStartDragPos = new PointF();
        this.mActivePointerId = -1;
        this.mPassedSlop = false;
        this.mPassedActiveThreshold = false;
        this.mThisDownIsIgnored = false;
        this.mAngleThreshold = context.getResources().getInteger(R.integer.assistant_gesture_corner_deg_threshold);
        this.mFlingDistanceThresholdPx = (int) context.getResources().getDimension(R.dimen.gestures_overscroll_fling_threshold);
        this.mFlingVelocityThresholdPx = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mGestureState = gestureState;
        this.mPlugin = overscrollPlugin;
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mSquaredSlop = scaledTouchSlop * scaledTouchSlop;
        float dimension = (int) context.getResources().getDimension(R.dimen.gestures_overscroll_finish_threshold);
        this.mSquaredFinishThreshold = dimension * dimension;
        float dimension2 = (int) context.getResources().getDimension(R.dimen.gestures_overscroll_active_threshold);
        this.mSquaredActiveThreshold = dimension2 * dimension2;
    }

    public static void debugPrint(String str) {
    }

    private String getDeviceState() {
        int type = this.mDelegate.getType();
        return ((type & 2) > 0 || (type & 128) > 0) ? OverscrollPlugin.DEVICE_STATE_LAUNCHER : (type & 4) > 0 ? OverscrollPlugin.DEVICE_STATE_APP : ((type & 256) > 0 || (type & 16) > 0) ? OverscrollPlugin.DEVICE_STATE_LOCKED : OverscrollPlugin.DEVICE_STATE_UNKNOWN;
    }

    private int getHorizontalDistancePx() {
        return (int) (this.mLastPos.x - this.mDownPos.x);
    }

    private String getUnderlyingActivity() {
        GestureState gestureState = this.mGestureState;
        return (gestureState == null || gestureState.getRunningTask() == null || this.mGestureState.getRunningTask().topActivity == null) ? "" : this.mGestureState.getRunningTask().topActivity.flattenToString();
    }

    private int getVerticalDistancePx() {
        return (int) (this.mLastPos.y - this.mDownPos.y);
    }

    private boolean isOverscrolled() {
        StatefulActivity createdActivity;
        if (this.mRecentsView == null && (createdActivity = this.mGestureState.getActivityInterface().getCreatedActivity()) != null) {
            this.mRecentsView = (RecentsView) createdActivity.getOverviewPanel();
        }
        RecentsView recentsView = this.mRecentsView;
        int i = (recentsView == null || !recentsView.hasRecentsExtraCard()) ? 0 : 1;
        RecentsView recentsView2 = this.mRecentsView;
        boolean z = recentsView2 == null || recentsView2.getRunningTaskIndex() <= i;
        float abs = Math.abs(this.mLastPos.y - this.mDownPos.y);
        float f = this.mLastPos.x - this.mDownPos.x;
        boolean z2 = Math.toDegrees(Math.atan2((double) abs, (double) Math.abs(f))) < ((double) this.mAngleThreshold);
        boolean blockOtherGestures = this.mPlugin.blockOtherGestures();
        return z && z2 && (blockOtherGestures || (!blockOtherGestures && (f > RecentsState.NO_OFFSET ? 1 : (f == RecentsState.NO_OFFSET ? 0 : -1)) < 0));
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 512;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mPlugin == null) {
            return;
        }
        StringBuilder f = a.f("got event, underlying activity is ");
        f.append(getUnderlyingActivity());
        debugPrint(f.toString());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int actionIndex = motionEvent.getActionIndex();
                                if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                                    r1 = actionIndex == 0 ? 1 : 0;
                                    this.mDownPos.set(motionEvent.getX(r1) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(r1) - (this.mLastPos.y - this.mDownPos.y));
                                    this.mLastPos.set(motionEvent.getX(r1), motionEvent.getY(r1));
                                    this.mActivePointerId = motionEvent.getPointerId(r1);
                                }
                            }
                        } else if (this.mState != 1) {
                            this.mState = 2;
                        }
                    }
                } else if (this.mState != 2) {
                    if (this.mDelegate.allowInterceptByParent()) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (findPointerIndex != -1) {
                            this.mLastPos.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                            PointF pointF = this.mLastPos;
                            float f2 = pointF.x;
                            PointF pointF2 = this.mDownPos;
                            float squaredHypot = Utilities.squaredHypot(f2 - pointF2.x, pointF.y - pointF2.y);
                            if (!this.mPassedSlop && squaredHypot > this.mSquaredSlop) {
                                this.mPassedSlop = true;
                                PointF pointF3 = this.mStartDragPos;
                                PointF pointF4 = this.mLastPos;
                                pointF3.set(pointF4.x, pointF4.y);
                                this.mGestureState.setState(GestureState.STATE_OVERSCROLL_WINDOW_CREATED);
                            }
                            if (this.mPassedSlop && !this.mPassedActiveThreshold && isOverscrolled() && squaredHypot > this.mSquaredActiveThreshold) {
                                r1 = 1;
                            }
                            if (r1 != 0) {
                                debugPrint("Past slop and past threshold, set active");
                                this.mPassedActiveThreshold = true;
                                setActive(motionEvent);
                            }
                            if (this.mPassedActiveThreshold) {
                                debugPrint("ACTION_MOVE Relaying touch event");
                                this.mPlugin.onTouchEvent(motionEvent, getHorizontalDistancePx(), getVerticalDistancePx(), (int) Math.sqrt(this.mSquaredFinishThreshold), this.mFlingDistanceThresholdPx, this.mFlingVelocityThresholdPx, getDeviceState(), getUnderlyingActivity());
                            }
                        }
                    } else {
                        this.mState = 2;
                    }
                }
            }
            debugPrint("ACTION_UP");
            if (this.mPassedActiveThreshold) {
                debugPrint("ACTION_UP Relaying touch event");
                this.mPlugin.onTouchEvent(motionEvent, getHorizontalDistancePx(), getVerticalDistancePx(), (int) Math.sqrt(this.mSquaredFinishThreshold), this.mFlingDistanceThresholdPx, this.mFlingVelocityThresholdPx, getDeviceState(), getUnderlyingActivity());
            }
            this.mPassedSlop = false;
            this.mPassedActiveThreshold = false;
            this.mState = 0;
        } else {
            debugPrint("ACTION_DOWN");
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            this.mLastPos.set(this.mDownPos);
            if (this.mPlugin.blockOtherGestures()) {
                debugPrint("mPlugin.blockOtherGestures(), becoming active on ACTION_DOWN");
                this.mPassedActiveThreshold = true;
                this.mPassedSlop = true;
                PointF pointF5 = this.mStartDragPos;
                PointF pointF6 = this.mLastPos;
                pointF5.set(pointF6.x, pointF6.y);
                setActive(motionEvent);
            }
        }
        if (this.mState != 1) {
            this.mDelegate.onMotionEvent(motionEvent);
        }
    }
}
