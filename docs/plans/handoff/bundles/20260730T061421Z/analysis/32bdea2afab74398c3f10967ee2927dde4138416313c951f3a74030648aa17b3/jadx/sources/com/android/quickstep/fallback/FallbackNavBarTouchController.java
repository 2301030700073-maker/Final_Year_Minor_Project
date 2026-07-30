package com.android.quickstep.fallback;

import android.graphics.PointF;
import android.view.MotionEvent;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.util.NavBarPosition;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;

/* loaded from: classes.dex */
public class FallbackNavBarTouchController implements TouchController, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    public final RecentsActivity mActivity;
    public final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public FallbackNavBarTouchController(RecentsActivity recentsActivity) {
        this.mActivity = recentsActivity;
        SysUINavigationMode.Mode mode = SysUINavigationMode.getMode(recentsActivity);
        if (mode != SysUINavigationMode.Mode.NO_BUTTON) {
            this.mTriggerSwipeUpTracker = null;
        } else {
            this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(this.mActivity, true, new NavBarPosition(mode, ((DefaultDisplay) DefaultDisplay.INSTANCE.b(this.mActivity)).mInfo), null, this);
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (!((motionEvent.getEdgeFlags() & 256) != 0) || this.mTriggerSwipeUpTracker == null) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.mTriggerSwipeUpTracker.init();
        }
        onControllerTouchEvent(motionEvent);
        return this.mTriggerSwipeUpTracker.interceptedTouch();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        TriggerSwipeUpTouchTracker triggerSwipeUpTouchTracker = this.mTriggerSwipeUpTracker;
        if (triggerSwipeUpTouchTracker == null) {
            return false;
        }
        triggerSwipeUpTouchTracker.onMotionEvent(motionEvent);
        return true;
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z, PointF pointF) {
        ((FallbackRecentsView) this.mActivity.getOverviewPanel()).startHome();
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
