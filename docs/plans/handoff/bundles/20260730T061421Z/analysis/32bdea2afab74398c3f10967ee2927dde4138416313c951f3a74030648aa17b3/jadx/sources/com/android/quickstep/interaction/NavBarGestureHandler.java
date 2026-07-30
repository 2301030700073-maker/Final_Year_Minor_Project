package com.android.quickstep.interaction;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import b.l.W;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.NavBarPosition;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;

/* loaded from: classes.dex */
public class NavBarGestureHandler implements View.OnTouchListener, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    public static final String LOG_TAG = "NavBarGestureHandler";
    public static final long RETRACT_GESTURE_ANIMATION_DURATION_MS = 300;
    public final int mAssistantAngleThreshold;
    public float mAssistantDistance;
    public final float mAssistantDragDistThreshold;
    public long mAssistantDragStartTime;
    public final float mAssistantFlingDistThreshold;
    public boolean mAssistantGestureActive;
    public final GestureDetector mAssistantGestureDetector;
    public float mAssistantLastProgress;
    public final float mAssistantSquaredSlop;
    public float mAssistantTimeFraction;
    public final long mAssistantTimeThreshold;
    public final int mBottomGestureHeight;
    public final Context mContext;
    public NavBarGestureAttemptCallback mGestureCallback;
    public boolean mLaunchedAssistant;
    public boolean mPassedAssistantSlop;
    public final TriggerSwipeUpTouchTracker mSwipeUpTouchTracker;
    public boolean mTouchCameFromAssistantCorner;
    public boolean mTouchCameFromNavBar;
    public final Point mDisplaySize = new Point();
    public final RectF mAssistantLeftRegion = new RectF();
    public final RectF mAssistantRightRegion = new RectF();
    public final PointF mAssistantStartDragPos = new PointF();
    public final PointF mDownPos = new PointF();
    public final PointF mLastPos = new PointF();

    public class AssistantGestureListener extends GestureDetector.SimpleOnGestureListener {
        public AssistantGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (NavBarGestureHandler.this.mLaunchedAssistant || !NavBarGestureHandler.this.mTouchCameFromAssistantCorner) {
                return true;
            }
            PointF pointF = new PointF(f, f2);
            if (!NavBarGestureHandler.this.isValidAssistantGestureAngle(f, -f2)) {
                if (NavBarGestureHandler.this.mGestureCallback == null) {
                    return true;
                }
                NavBarGestureHandler.this.mGestureCallback.onNavBarGestureAttempted(NavBarGestureResult.ASSISTANT_NOT_STARTED_BAD_ANGLE, pointF);
                return true;
            }
            if (NavBarGestureHandler.this.mAssistantDistance < NavBarGestureHandler.this.mAssistantFlingDistThreshold) {
                return true;
            }
            NavBarGestureHandler.this.mAssistantLastProgress = 1.0f;
            NavBarGestureHandler.this.startAssistant(pointF);
            return true;
        }
    }

    public interface NavBarGestureAttemptCallback {
        void onNavBarGestureAttempted(NavBarGestureResult navBarGestureResult, PointF pointF);

        default void setAssistantProgress(float f) {
        }

        default void setNavBarGestureProgress(Float f) {
        }
    }

    public enum NavBarGestureResult {
        UNKNOWN,
        HOME_GESTURE_COMPLETED,
        OVERVIEW_GESTURE_COMPLETED,
        HOME_NOT_STARTED_TOO_FAR_FROM_EDGE,
        OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE,
        HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION,
        HOME_OR_OVERVIEW_CANCELLED,
        ASSISTANT_COMPLETED,
        ASSISTANT_NOT_STARTED_BAD_ANGLE,
        ASSISTANT_NOT_STARTED_SWIPE_TOO_SHORT
    }

    public NavBarGestureHandler(Context context) {
        int i;
        this.mContext = context;
        Display display = context.getDisplay();
        if (display == null) {
            i = 0;
        } else {
            int rotation = display.getRotation();
            display.getRealSize(this.mDisplaySize);
            i = rotation;
        }
        this.mSwipeUpTouchTracker = new TriggerSwipeUpTouchTracker(context, true, new NavBarPosition(SysUINavigationMode.Mode.NO_BUTTON, i), null, this);
        Resources resources = context.getResources();
        this.mBottomGestureHeight = W.getNavbarSize("navigation_bar_gesture_height", resources);
        this.mAssistantDragDistThreshold = resources.getDimension(R.dimen.gestures_assistant_drag_threshold);
        this.mAssistantFlingDistThreshold = resources.getDimension(R.dimen.gestures_assistant_fling_threshold);
        this.mAssistantTimeThreshold = resources.getInteger(R.integer.assistant_gesture_min_time_threshold);
        this.mAssistantAngleThreshold = resources.getInteger(R.integer.assistant_gesture_corner_deg_threshold);
        this.mAssistantGestureDetector = new GestureDetector(context, new AssistantGestureListener());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.gestures_assistant_width);
        float max = Math.max(this.mBottomGestureHeight, QuickStepContract.getWindowCornerRadius(resources));
        RectF rectF = this.mAssistantLeftRegion;
        RectF rectF2 = this.mAssistantRightRegion;
        Point point = this.mDisplaySize;
        int i2 = point.y;
        float f = i2;
        rectF2.bottom = f;
        rectF.bottom = f;
        float f2 = i2 - max;
        rectF2.top = f2;
        rectF.top = f2;
        rectF.left = RecentsState.NO_OFFSET;
        rectF.right = dimensionPixelSize;
        rectF2.right = point.x;
        rectF2.left = r0 - dimensionPixelSize;
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mAssistantSquaredSlop = scaledTouchSlop * scaledTouchSlop;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidAssistantGestureAngle(float f, float f2) {
        float degrees = (float) Math.toDegrees(Math.atan2(f2, f));
        if (degrees > 90.0f) {
            degrees = 180.0f - degrees;
        }
        return degrees > ((float) this.mAssistantAngleThreshold) && degrees < 90.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAssistant(PointF pointF) {
        NavBarGestureAttemptCallback navBarGestureAttemptCallback = this.mGestureCallback;
        if (navBarGestureAttemptCallback != null) {
            navBarGestureAttemptCallback.onNavBarGestureAttempted(NavBarGestureResult.ASSISTANT_COMPLETED, pointF);
        }
        ((VibratorWrapper) VibratorWrapper.INSTANCE.b(this.mContext)).vibrate(VibratorWrapper.EFFECT_CLICK);
        this.mLaunchedAssistant = true;
    }

    private void updateAssistantProgress() {
        if (this.mLaunchedAssistant) {
            return;
        }
        float min = Math.min((this.mAssistantDistance * 1.0f) / this.mAssistantDragDistThreshold, 1.0f);
        float f = this.mAssistantTimeFraction;
        this.mAssistantLastProgress = min * f;
        if (this.mAssistantDistance >= this.mAssistantDragDistThreshold && f >= 1.0f) {
            startAssistant(new PointF());
            return;
        }
        NavBarGestureAttemptCallback navBarGestureAttemptCallback = this.mGestureCallback;
        if (navBarGestureAttemptCallback != null) {
            navBarGestureAttemptCallback.setAssistantProgress(this.mAssistantLastProgress);
        }
    }

    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.mGestureCallback.setAssistantProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z, PointF pointF) {
        if (this.mGestureCallback == null || this.mAssistantGestureActive) {
            return;
        }
        pointF.set(pointF.x / 1000.0f, pointF.y / 1000.0f);
        if (this.mTouchCameFromNavBar) {
            this.mGestureCallback.onNavBarGestureAttempted(z ? NavBarGestureResult.HOME_GESTURE_COMPLETED : NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED, pointF);
        } else {
            this.mGestureCallback.onNavBarGestureAttempted(z ? NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE : NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE, pointF);
        }
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
        NavBarGestureAttemptCallback navBarGestureAttemptCallback = this.mGestureCallback;
        if (navBarGestureAttemptCallback == null || this.mAssistantGestureActive) {
            return;
        }
        navBarGestureAttemptCallback.onNavBarGestureAttempted(NavBarGestureResult.HOME_OR_OVERVIEW_CANCELLED, new PointF());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r8 != 3) goto L58;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.interaction.NavBarGestureHandler.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void registerNavBarGestureAttemptCallback(NavBarGestureAttemptCallback navBarGestureAttemptCallback) {
        this.mGestureCallback = navBarGestureAttemptCallback;
    }

    public void unregisterNavBarGestureAttemptCallback() {
        this.mGestureCallback = null;
    }
}
