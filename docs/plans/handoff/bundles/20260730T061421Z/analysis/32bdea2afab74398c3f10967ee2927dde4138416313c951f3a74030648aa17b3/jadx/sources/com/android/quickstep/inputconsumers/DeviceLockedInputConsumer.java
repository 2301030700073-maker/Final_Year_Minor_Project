package com.android.quickstep.inputconsumers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import b.l.W;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.inputconsumers.DeviceLockedInputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputMonitorCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;

/* loaded from: classes.dex */
public class DeviceLockedInputConsumer implements InputConsumer, RecentsAnimationCallbacks.RecentsAnimationListener, TransformParams.BuilderProxy {
    public static final String[] STATE_NAMES = null;
    public final Context mContext;
    public final RecentsAnimationDeviceState mDeviceState;
    public final Point mDisplaySize;
    public final GestureState mGestureState;
    public final InputMonitorCompat mInputMonitorCompat;
    public final float mMaxTranslationY;
    public RecentsAnimationController mRecentsAnimationController;
    public final MultiStateCallback mStateCallback;
    public final TaskAnimationManager mTaskAnimationManager;
    public final float mTouchSlopSquared;
    public VelocityTracker mVelocityTracker;
    public static final int STATE_TARGET_RECEIVED = getFlagForIndex(0, "STATE_TARGET_RECEIVED");
    public static final int STATE_HANDLER_INVALIDATED = getFlagForIndex(1, "STATE_HANDLER_INVALIDATED");
    public final PointF mTouchDown = new PointF();
    public final Matrix mMatrix = new Matrix();
    public final AnimatedFloat mProgress = new AnimatedFloat(new Runnable() { // from class: c.a.b.Z1.b
        @Override // java.lang.Runnable
        public final void run() {
            DeviceLockedInputConsumer.this.applyTransform();
        }
    });
    public boolean mThresholdCrossed = false;
    public boolean mHomeLaunched = false;
    public final TransformParams mTransformParams = new TransformParams();

    public DeviceLockedInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, InputMonitorCompat inputMonitorCompat) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mTaskAnimationManager = taskAnimationManager;
        this.mGestureState = gestureState;
        this.mTouchSlopSquared = Utilities.squaredTouchSlop(context);
        this.mInputMonitorCompat = inputMonitorCompat;
        this.mMaxTranslationY = context.getResources().getDimensionPixelSize(R.dimen.device_locked_y_offset);
        this.mDisplaySize = ((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo.realSize;
        MultiStateCallback multiStateCallback = new MultiStateCallback(STATE_NAMES);
        this.mStateCallback = multiStateCallback;
        multiStateCallback.runOnceAtState(STATE_TARGET_RECEIVED | STATE_HANDLER_INVALIDATED, new Runnable() { // from class: c.a.b.Z1.c
            @Override // java.lang.Runnable
            public final void run() {
                DeviceLockedInputConsumer.this.endRemoteAnimation();
            }
        });
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTransform() {
        this.mTransformParams.setProgress(this.mProgress.value);
        if (this.mTransformParams.getTargetSet() != null) {
            TransformParams transformParams = this.mTransformParams;
            transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endRemoteAnimation() {
        if (this.mHomeLaunched) {
            ActivityManagerWrapper.getInstance().cancelRecentsAnimation(false);
            return;
        }
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finishController(false, null, false);
        }
    }

    private void finishTouchTracking(MotionEvent motionEvent) {
        if (this.mThresholdCrossed) {
            final boolean z = true;
            if (motionEvent.getAction() == 1) {
                this.mVelocityTracker.computeCurrentVelocity(1000, ViewConfiguration.get(this.mContext).getScaledMaximumFlingVelocity());
                float yVelocity = this.mVelocityTracker.getYVelocity();
                if (Math.abs(yVelocity) <= this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_velocity) ? this.mProgress.value < 0.3f : yVelocity >= RecentsState.NO_OFFSET) {
                    z = false;
                }
                AnimatedFloat animatedFloat = this.mProgress;
                ObjectAnimator animateToValue = animatedFloat.animateToValue(animatedFloat.value, RecentsState.NO_OFFSET);
                animateToValue.setDuration(100L);
                animateToValue.setInterpolator(Interpolators.ACCEL);
                animateToValue.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.inputconsumers.DeviceLockedInputConsumer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            DeviceLockedInputConsumer.this.mContext.startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456));
                            DeviceLockedInputConsumer.this.mHomeLaunched = true;
                        }
                        DeviceLockedInputConsumer.this.mStateCallback.a(DeviceLockedInputConsumer.STATE_HANDLER_INVALIDATED);
                    }
                });
                animateToValue.start();
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }
        this.mStateCallback.a(STATE_HANDLER_INVALIDATED);
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
    }

    public static int getFlagForIndex(int i, String str) {
        return 1 << i;
    }

    private void startRecentsTransition() {
        this.mThresholdCrossed = true;
        this.mHomeLaunched = false;
        W.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitorCompat.pilferPointers();
        this.mTaskAnimationManager.startRecentsAnimation(this.mGestureState, this.mGestureState.getHomeIntent().putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, this.mGestureState.getGestureId()), this);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mThresholdCrossed;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 16;
    }

    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
    public void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
        this.mMatrix.setTranslate(RecentsState.NO_OFFSET, this.mProgress.value * this.mMaxTranslationY);
        builder.withMatrix(this.mMatrix);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mStateCallback.a(STATE_HANDLER_INVALIDATED);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.addMovement(motionEvent);
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mTouchDown.set(x, y);
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (this.mThresholdCrossed) {
                    this.mProgress.updateValue(Math.max(this.mTouchDown.y - y, RecentsState.NO_OFFSET) / this.mDisplaySize.y);
                    return;
                } else {
                    PointF pointF = this.mTouchDown;
                    if (Utilities.squaredHypot(x - pointF.x, y - pointF.y) > this.mTouchSlopSquared) {
                        startRecentsTransition();
                        return;
                    }
                    return;
                }
            }
            if (action != 3) {
                if (action == 5 && !this.mThresholdCrossed) {
                    if (this.mDeviceState.isInSwipeUpTouchRegion(motionEvent, motionEvent.getActionIndex())) {
                        return;
                    }
                    int action2 = motionEvent.getAction();
                    motionEvent.setAction(3);
                    finishTouchTracking(motionEvent);
                    motionEvent.setAction(action2);
                    return;
                }
                return;
            }
        }
        finishTouchTracking(motionEvent);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(ThumbnailData thumbnailData) {
        this.mRecentsAnimationController = null;
        this.mTransformParams.setTargetSet(null);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mRecentsAnimationController = recentsAnimationController;
        this.mTransformParams.setTargetSet(recentsAnimationTargets);
        applyTransform();
        this.mStateCallback.a(STATE_TARGET_RECEIVED);
    }
}
