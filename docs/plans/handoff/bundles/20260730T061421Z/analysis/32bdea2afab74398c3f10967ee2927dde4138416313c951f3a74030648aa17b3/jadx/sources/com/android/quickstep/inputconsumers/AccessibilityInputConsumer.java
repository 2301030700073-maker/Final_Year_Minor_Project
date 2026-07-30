package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class AccessibilityInputConsumer extends DelegateInputConsumer {
    public static final String TAG = "A11yInputConsumer";
    public int mActivePointerId;
    public final Context mContext;
    public final RecentsAnimationDeviceState mDeviceState;
    public float mDownY;
    public final float mMinFlingVelocity;
    public final float mMinGestureDistance;
    public final MotionPauseDetector mMotionPauseDetector;
    public float mTotalY;
    public final VelocityTracker mVelocityTracker;

    public AccessibilityInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        super(inputConsumer, inputMonitorCompat);
        this.mActivePointerId = -1;
        this.mContext = context;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mMinGestureDistance = context.getResources().getDimension(R.dimen.accessibility_gesture_min_swipe_distance);
        this.mMinFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mDeviceState = recentsAnimationDeviceState;
        this.mMotionPauseDetector = new MotionPauseDetector(context);
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 32;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // com.android.quickstep.InputConsumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMotionEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.inputconsumers.AccessibilityInputConsumer.onMotionEvent(android.view.MotionEvent):void");
    }
}
