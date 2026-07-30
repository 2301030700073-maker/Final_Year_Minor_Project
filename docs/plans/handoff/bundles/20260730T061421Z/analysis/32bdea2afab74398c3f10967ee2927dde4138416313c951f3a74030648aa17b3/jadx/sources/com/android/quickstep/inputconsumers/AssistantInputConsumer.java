package com.android.quickstep.inputconsumers;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.inputconsumers.AssistantInputConsumer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class AssistantInputConsumer extends DelegateInputConsumer {
    public static final int INVOCATION_TYPE_GESTURE = 1;
    public static final String INVOCATION_TYPE_KEY = "invocation_type";
    public static final String OPA_BUNDLE_TRIGGER = "triggered_by";
    public static final int OPA_BUNDLE_TRIGGER_DIAG_SWIPE_GESTURE = 83;
    public static final long RETRACT_ANIMATION_DURATION_MS = 300;
    public static final String TAG = "AssistantInputConsumer";
    public int mActivePointerId;
    public BaseActivityInterface mActivityInterface;
    public final int mAngleThreshold;
    public final Context mContext;
    public int mDirection;
    public float mDistance;
    public final PointF mDownPos;
    public final float mDragDistThreshold;
    public long mDragTime;
    public final float mFlingDistThreshold;
    public final GestureDetector mGestureDetector;
    public final boolean mIsAssistGestureConstrained;
    public final PointF mLastPos;
    public float mLastProgress;
    public boolean mLaunchedAssistant;
    public boolean mPassedSlop;
    public final float mSquaredSlop;
    public final PointF mStartDragPos;
    public float mTimeFraction;
    public final long mTimeThreshold;

    public class AssistantGestureListener extends GestureDetector.SimpleOnGestureListener {
        public AssistantGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!AssistantInputConsumer.this.mIsAssistGestureConstrained && AssistantInputConsumer.this.isValidAssistantGestureAngle(f, -f2) && AssistantInputConsumer.this.mDistance >= AssistantInputConsumer.this.mFlingDistThreshold && !AssistantInputConsumer.this.mLaunchedAssistant) {
                AssistantInputConsumer assistantInputConsumer = AssistantInputConsumer.this;
                if (assistantInputConsumer.mState != 2) {
                    assistantInputConsumer.mLastProgress = 1.0f;
                    ((SystemUiProxy) SystemUiProxy.INSTANCE.b(AssistantInputConsumer.this.mContext)).onAssistantGestureCompletion((float) Math.sqrt((f2 * f2) + (f * f)));
                    AssistantInputConsumer.this.startAssistantInternal(4);
                    Bundle bundle = new Bundle();
                    bundle.putInt(AssistantInputConsumer.INVOCATION_TYPE_KEY, 1);
                    ((SystemUiProxy) SystemUiProxy.INSTANCE.b(AssistantInputConsumer.this.mContext)).startAssistant(bundle);
                    AssistantInputConsumer.this.mLaunchedAssistant = true;
                }
            }
            return true;
        }
    }

    public AssistantInputConsumer(Context context, GestureState gestureState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat, boolean z) {
        super(inputConsumer, inputMonitorCompat);
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mStartDragPos = new PointF();
        this.mActivePointerId = -1;
        Resources resources = context.getResources();
        this.mContext = context;
        this.mIsAssistGestureConstrained = z;
        this.mDragDistThreshold = resources.getDimension(R.dimen.gestures_assistant_drag_threshold);
        this.mFlingDistThreshold = resources.getDimension(R.dimen.gestures_assistant_fling_threshold);
        this.mTimeThreshold = resources.getInteger(R.integer.assistant_gesture_min_time_threshold);
        this.mAngleThreshold = resources.getInteger(R.integer.assistant_gesture_corner_deg_threshold);
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mSquaredSlop = scaledTouchSlop * scaledTouchSlop;
        this.mActivityInterface = gestureState.getActivityInterface();
        this.mGestureDetector = new GestureDetector(context, new AssistantGestureListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidAssistantGestureAngle(float f, float f2) {
        float degrees = (float) Math.toDegrees(Math.atan2(f2, f));
        this.mDirection = degrees > 90.0f ? 6 : 5;
        if (degrees > 90.0f) {
            degrees = 180.0f - degrees;
        }
        return degrees > ((float) this.mAngleThreshold) && degrees < 90.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAssistantInternal(int i) {
        UserEventDispatcher.newInstance(this.mContext).logActionOnContainer(i, this.mDirection, 11);
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (createdActivity != null) {
            createdActivity.getRootView().performHapticFeedback(13, 1);
        }
    }

    private void updateAssistantProgress() {
        if (this.mLaunchedAssistant) {
            return;
        }
        float min = Math.min((this.mDistance * 1.0f) / this.mDragDistThreshold, 1.0f);
        float f = this.mTimeFraction;
        this.mLastProgress = min * f;
        if (this.mDistance < this.mDragDistThreshold || f < 1.0f) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).onAssistantProgress(this.mLastProgress);
            return;
        }
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).onAssistantGestureCompletion(RecentsState.NO_OFFSET);
        startAssistantInternal(3);
        Bundle bundle = new Bundle();
        bundle.putInt(OPA_BUNDLE_TRIGGER, 83);
        bundle.putInt(INVOCATION_TYPE_KEY, 1);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).startAssistant(bundle);
        this.mLaunchedAssistant = true;
    }

    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).onAssistantProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 8;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int actionIndex = motionEvent.getActionIndex();
                                if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                                    int i = actionIndex == 0 ? 1 : 0;
                                    this.mDownPos.set(motionEvent.getX(i) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(i) - (this.mLastPos.y - this.mDownPos.y));
                                    this.mLastPos.set(motionEvent.getX(i), motionEvent.getY(i));
                                    this.mActivePointerId = motionEvent.getPointerId(i);
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
                            if (this.mPassedSlop) {
                                float f = this.mLastPos.x;
                                PointF pointF = this.mStartDragPos;
                                float hypot = (float) Math.hypot(f - pointF.x, r0.y - pointF.y);
                                this.mDistance = hypot;
                                if (hypot >= RecentsState.NO_OFFSET) {
                                    this.mTimeFraction = Math.min(((SystemClock.uptimeMillis() - this.mDragTime) * 1.0f) / this.mTimeThreshold, 1.0f);
                                    updateAssistantProgress();
                                }
                            } else {
                                PointF pointF2 = this.mLastPos;
                                float f2 = pointF2.x;
                                PointF pointF3 = this.mDownPos;
                                if (Utilities.squaredHypot(f2 - pointF3.x, pointF2.y - pointF3.y) > this.mSquaredSlop) {
                                    this.mPassedSlop = true;
                                    PointF pointF4 = this.mStartDragPos;
                                    PointF pointF5 = this.mLastPos;
                                    pointF4.set(pointF5.x, pointF5.y);
                                    this.mDragTime = SystemClock.uptimeMillis();
                                    PointF pointF6 = this.mDownPos;
                                    float f3 = pointF6.x;
                                    PointF pointF7 = this.mLastPos;
                                    if (isValidAssistantGestureAngle(f3 - pointF7.x, pointF6.y - pointF7.y)) {
                                        setActive(motionEvent);
                                    } else {
                                        this.mState = 2;
                                    }
                                }
                            }
                        }
                    } else {
                        this.mState = 2;
                    }
                }
            }
            if (this.mState != 2 && !this.mLaunchedAssistant) {
                ValueAnimator duration = ValueAnimator.ofFloat(this.mLastProgress, RecentsState.NO_OFFSET).setDuration(300L);
                UserEventDispatcher.newInstance(this.mContext).logActionOnContainer(6, this.mDirection, 11);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.Z1.a
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AssistantInputConsumer.this.a(valueAnimator);
                    }
                });
                duration.setInterpolator(Interpolators.DEACCEL_2);
                duration.start();
            }
            this.mPassedSlop = false;
            this.mState = 0;
        } else {
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            this.mLastPos.set(this.mDownPos);
            this.mTimeFraction = RecentsState.NO_OFFSET;
        }
        this.mGestureDetector.onTouchEvent(motionEvent);
        if (this.mState != 1) {
            this.mDelegate.onMotionEvent(motionEvent);
        }
    }
}
