package com.android.quickstep.inputconsumers;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import b.l.W;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.BaseSwipeUpHandler;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.inputconsumers.OtherActivityInputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.CachedEventDispatcher;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.NavBarPosition;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.Objects;
import java.util.function.Consumer;

@TargetApi(28)
/* loaded from: classes.dex */
public class OtherActivityInputConsumer extends ContextWrapper implements InputConsumer {
    public static final String DOWN_EVT = "OtherActivityInputConsumer.DOWN";
    public static final float QUICKSTEP_TOUCH_SLOP_RATIO_GESTURAL = 2.0f;
    public static final float QUICKSTEP_TOUCH_SLOP_RATIO_TWO_BUTTON = 9.0f;
    public static final String UP_EVT = "OtherActivityInputConsumer.UP";
    public RecentsAnimationCallbacks mActiveCallbacks;
    public int mActivePointerId;
    public final BaseActivityInterface mActivityInterface;
    public Runnable mCancelRecentsAnimationRunnable;
    public final RecentsAnimationDeviceState mDeviceState;
    public final boolean mDisableHorizontalSwipe;
    public final PointF mDownPos;
    public final GestureState mGestureState;
    public final BaseSwipeUpHandler.Factory mHandlerFactory;
    public final InputMonitorCompat mInputMonitorCompat;
    public BaseSwipeUpHandler mInteractionHandler;
    public final boolean mIsDeferredDownTarget;
    public final PointF mLastPos;
    public Handler mMainThreadHandler;
    public final MotionPauseDetector mMotionPauseDetector;
    public final float mMotionPauseMinDisplacement;
    public final NavBarPosition mNavBarPosition;
    public final Consumer mOnCompleteCallback;
    public boolean mPassedPilferInputSlop;
    public boolean mPassedSlopOnThisGesture;
    public boolean mPassedWindowMoveSlop;
    public final CachedEventDispatcher mRecentsViewDispatcher;
    public final float mSquaredTouchSlop;
    public float mStartDisplacement;
    public final TaskAnimationManager mTaskAnimationManager;
    public final float mTouchSlop;
    public VelocityTracker mVelocityTracker;

    public OtherActivityInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, boolean z, Consumer consumer, InputMonitorCompat inputMonitorCompat, boolean z2, BaseSwipeUpHandler.Factory factory) {
        super(context);
        this.mRecentsViewDispatcher = new CachedEventDispatcher();
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mActivePointerId = -1;
        this.mCancelRecentsAnimationRunnable = new Runnable() { // from class: c.a.b.Z1.d
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerWrapper.getInstance().cancelRecentsAnimation(true);
            }
        };
        this.mDeviceState = recentsAnimationDeviceState;
        this.mNavBarPosition = recentsAnimationDeviceState.getNavBarPosition();
        this.mTaskAnimationManager = taskAnimationManager;
        this.mGestureState = gestureState;
        this.mMainThreadHandler = new Handler(Looper.getMainLooper());
        this.mHandlerFactory = factory;
        this.mActivityInterface = this.mGestureState.getActivityInterface();
        this.mMotionPauseDetector = new MotionPauseDetector(context, false, (this.mNavBarPosition.isLeftEdge() || this.mNavBarPosition.isRightEdge()) ? 0 : 1);
        this.mMotionPauseMinDisplacement = context.getResources().getDimension(R.dimen.motion_pause_detector_min_displacement_from_app);
        this.mOnCompleteCallback = consumer;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mInputMonitorCompat = inputMonitorCompat;
        boolean isRecentsAnimationRunning = this.mTaskAnimationManager.isRecentsAnimationRunning();
        this.mIsDeferredDownTarget = !isRecentsAnimationRunning && z;
        float f = this.mDeviceState.isFullyGesturalNavMode() ? 2.0f : 9.0f;
        float scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        this.mTouchSlop = scaledTouchSlop;
        this.mSquaredTouchSlop = f * scaledTouchSlop * scaledTouchSlop;
        this.mPassedWindowMoveSlop = isRecentsAnimationRunning;
        this.mPassedPilferInputSlop = isRecentsAnimationRunning;
        this.mDisableHorizontalSwipe = !isRecentsAnimationRunning && z2;
    }

    private void finishTouchTracking(MotionEvent motionEvent) {
        Trace.beginSection(UP_EVT);
        if (!this.mPassedWindowMoveSlop || this.mInteractionHandler == null) {
            onConsumerAboutToBeSwitched();
            onInteractionGestureFinished();
            this.mMainThreadHandler.removeCallbacks(this.mCancelRecentsAnimationRunnable);
            this.mMainThreadHandler.postDelayed(this.mCancelRecentsAnimationRunnable, 100L);
        } else if (motionEvent.getActionMasked() == 3) {
            this.mInteractionHandler.onGestureCancelled();
        } else {
            this.mVelocityTracker.computeCurrentVelocity(1000, ViewConfiguration.get(this).getScaledMaximumFlingVelocity());
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            float f = this.mNavBarPosition.isRightEdge() ? xVelocity : this.mNavBarPosition.isLeftEdge() ? -xVelocity : yVelocity;
            this.mInteractionHandler.updateDisplacement(getDisplacement(motionEvent) - this.mStartDisplacement);
            this.mInteractionHandler.onGestureEnded(f, new PointF(xVelocity, yVelocity), this.mDownPos);
        }
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
        this.mMotionPauseDetector.clear();
        Trace.endSection();
    }

    private void forceCancelGesture(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.setAction(3);
        finishTouchTracking(motionEvent);
        motionEvent.setAction(action);
    }

    private float getDisplacement(MotionEvent motionEvent) {
        float y;
        float f;
        if (this.mNavBarPosition.isRightEdge()) {
            y = motionEvent.getX();
            f = this.mDownPos.x;
        } else {
            if (this.mNavBarPosition.isLeftEdge()) {
                return this.mDownPos.x - motionEvent.getX();
            }
            y = motionEvent.getY();
            f = this.mDownPos.y;
        }
        return y - f;
    }

    private void notifyGestureStarted(boolean z) {
        ActiveGestureLog.INSTANCE.addLog("startQuickstep");
        if (this.mInteractionHandler == null) {
            return;
        }
        W.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitorCompat.pilferPointers();
        this.mActivityInterface.closeOverlay();
        ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
        this.mInteractionHandler.onGestureStarted(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInteractionGestureFinished() {
        removeListener();
        this.mInteractionHandler = null;
        this.mOnCompleteCallback.accept(this);
    }

    private void removeListener() {
        RecentsAnimationCallbacks recentsAnimationCallbacks = this.mActiveCallbacks;
        if (recentsAnimationCallbacks != null) {
            recentsAnimationCallbacks.removeListener(this.mInteractionHandler);
        }
    }

    private void startTouchTrackingForWindowAnimation(long j) {
        ActiveGestureLog.INSTANCE.addLog("startRecentsAnimation");
        BaseSwipeUpHandler newHandler = this.mHandlerFactory.newHandler(this.mGestureState, j, this.mTaskAnimationManager.isRecentsAnimationRunning());
        this.mInteractionHandler = newHandler;
        newHandler.setGestureEndCallback(new Runnable() { // from class: c.a.b.Z1.e
            @Override // java.lang.Runnable
            public final void run() {
                OtherActivityInputConsumer.this.onInteractionGestureFinished();
            }
        });
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        final BaseSwipeUpHandler baseSwipeUpHandler = this.mInteractionHandler;
        Objects.requireNonNull(baseSwipeUpHandler);
        motionPauseDetector.setOnMotionPauseListener(new MotionPauseDetector.OnMotionPauseListener() { // from class: c.a.b.Z1.i
            @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
            public final void onMotionPauseChanged(boolean z) {
                BaseSwipeUpHandler.this.onMotionPauseChanged(z);
            }
        });
        Intent intent = new Intent(this.mInteractionHandler.getLaunchIntent());
        this.mInteractionHandler.initWhenReady(intent);
        if (!this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            intent.putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, this.mGestureState.getGestureId());
            this.mActiveCallbacks = this.mTaskAnimationManager.startRecentsAnimation(this.mGestureState, intent, this.mInteractionHandler);
            return;
        }
        RecentsAnimationCallbacks continueRecentsAnimation = this.mTaskAnimationManager.continueRecentsAnimation(this.mGestureState);
        this.mActiveCallbacks = continueRecentsAnimation;
        continueRecentsAnimation.addListener(this.mInteractionHandler);
        this.mTaskAnimationManager.notifyRecentsAnimationState(this.mInteractionHandler);
        notifyGestureStarted(true);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mPassedPilferInputSlop || this.mGestureState.hasState(GestureState.STATE_OVERSCROLL_WINDOW_CREATED);
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 4;
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean isConsumerDetachedFromGesture() {
        return true;
    }

    @Override // com.android.quickstep.InputConsumer
    public void notifyOrientationSetup() {
        this.mDeviceState.onStartGesture();
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mMainThreadHandler.removeCallbacks(this.mCancelRecentsAnimationRunnable);
        if (this.mInteractionHandler != null) {
            removeListener();
            this.mInteractionHandler.onConsumerAboutToBeSwitched();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            return;
        }
        if (this.mPassedWindowMoveSlop && this.mInteractionHandler != null && !this.mRecentsViewDispatcher.hasConsumer()) {
            this.mRecentsViewDispatcher.setConsumer(this.mInteractionHandler.getRecentsViewDispatcher(this.mNavBarPosition.getRotation()));
            int action = motionEvent.getAction();
            motionEvent.setAction(PagedView.ACTION_MOVE_ALLOW_EASY_FLING);
            this.mRecentsViewDispatcher.dispatchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        int edgeFlags = motionEvent.getEdgeFlags();
        motionEvent.setEdgeFlags(edgeFlags | 256);
        this.mRecentsViewDispatcher.dispatchEvent(motionEvent);
        motionEvent.setEdgeFlags(edgeFlags);
        this.mVelocityTracker.addMovement(motionEvent);
        if (motionEvent.getActionMasked() == 6) {
            this.mVelocityTracker.clear();
            this.mMotionPauseDetector.clear();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            Trace.beginSection(DOWN_EVT);
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            this.mLastPos.set(this.mDownPos);
            if (!this.mIsDeferredDownTarget) {
                startTouchTrackingForWindowAnimation(motionEvent.getEventTime());
            }
            Trace.endSection();
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex == -1) {
                    return;
                }
                this.mLastPos.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                float displacement = getDisplacement(motionEvent);
                PointF pointF = this.mLastPos;
                float f = pointF.x;
                PointF pointF2 = this.mDownPos;
                float f2 = f - pointF2.x;
                float f3 = pointF.y - pointF2.y;
                if (!this.mPassedWindowMoveSlop && !this.mIsDeferredDownTarget) {
                    float abs = Math.abs(displacement);
                    float f4 = this.mTouchSlop;
                    if (abs > f4) {
                        this.mPassedWindowMoveSlop = true;
                        this.mStartDisplacement = Math.min(displacement, -f4);
                    }
                }
                float abs2 = Math.abs(f2);
                float f5 = -displacement;
                Object[] objArr = Utilities.squaredHypot(f2, f3) >= this.mSquaredTouchSlop;
                if (!this.mPassedSlopOnThisGesture && objArr != false) {
                    this.mPassedSlopOnThisGesture = true;
                }
                boolean z = (!this.mPassedSlopOnThisGesture && this.mPassedPilferInputSlop) == true || abs2 > f5;
                if (!this.mPassedPilferInputSlop && objArr != false) {
                    if (this.mDisableHorizontalSwipe && Math.abs(f2) > Math.abs(f3)) {
                        forceCancelGesture(motionEvent);
                        return;
                    }
                    this.mPassedPilferInputSlop = true;
                    if (this.mIsDeferredDownTarget) {
                        startTouchTrackingForWindowAnimation(motionEvent.getEventTime());
                    }
                    if (!this.mPassedWindowMoveSlop) {
                        this.mPassedWindowMoveSlop = true;
                        this.mStartDisplacement = Math.min(displacement, -this.mTouchSlop);
                    }
                    notifyGestureStarted(z);
                }
                BaseSwipeUpHandler baseSwipeUpHandler = this.mInteractionHandler;
                if (baseSwipeUpHandler != null) {
                    if (this.mPassedWindowMoveSlop) {
                        baseSwipeUpHandler.updateDisplacement(displacement - this.mStartDisplacement);
                    }
                    if (this.mDeviceState.isFullyGesturalNavMode()) {
                        this.mMotionPauseDetector.setDisallowPause(f5 < this.mMotionPauseMinDisplacement || z);
                        this.mMotionPauseDetector.addPosition(motionEvent);
                        this.mInteractionHandler.setIsLikelyToStartNewTask(z);
                        return;
                    }
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked == 5) {
                    if (this.mPassedPilferInputSlop) {
                        return;
                    }
                    if (this.mDeviceState.isInSwipeUpTouchRegion(motionEvent, motionEvent.getActionIndex())) {
                        return;
                    }
                    forceCancelGesture(motionEvent);
                    return;
                }
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                    int i = actionIndex == 0 ? 1 : 0;
                    this.mDownPos.set(motionEvent.getX(i) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(i) - (this.mLastPos.y - this.mDownPos.y));
                    this.mLastPos.set(motionEvent.getX(i), motionEvent.getY(i));
                    this.mActivePointerId = motionEvent.getPointerId(i);
                    return;
                }
                return;
            }
        }
        finishTouchTracking(motionEvent);
    }
}
