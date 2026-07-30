package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.view.MotionEvent;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.inputconsumers.ScreenPinnedInputConsumer;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class ScreenPinnedInputConsumer implements InputConsumer {
    public static final String TAG = "ScreenPinnedConsumer";
    public final MotionPauseDetector mMotionPauseDetector;
    public final float mMotionPauseMinDisplacement;
    public float mTouchDownY;

    public ScreenPinnedInputConsumer(final Context context, final GestureState gestureState) {
        this.mMotionPauseMinDisplacement = context.getResources().getDimension(R.dimen.motion_pause_detector_min_displacement_from_app);
        MotionPauseDetector motionPauseDetector = new MotionPauseDetector(context, true);
        this.mMotionPauseDetector = motionPauseDetector;
        motionPauseDetector.setOnMotionPauseListener(new MotionPauseDetector.OnMotionPauseListener() { // from class: c.a.b.Z1.g
            @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
            public final void onMotionPauseChanged(boolean z) {
                ScreenPinnedInputConsumer.this.a(context, gestureState, z);
            }
        });
    }

    public /* synthetic */ void a(Context context, GestureState gestureState, boolean z) {
        if (z) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(context)).stopScreenPinning();
            StatefulActivity createdActivity = gestureState.getActivityInterface().getCreatedActivity();
            if (createdActivity != null) {
                createdActivity.getRootView().performHapticFeedback(0, 1);
            }
            this.mMotionPauseDetector.clear();
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 64;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mTouchDownY = y;
            return;
        }
        if (action != 1) {
            if (action == 2) {
                this.mMotionPauseDetector.setDisallowPause(this.mTouchDownY - y < this.mMotionPauseMinDisplacement);
                this.mMotionPauseDetector.addPosition(motionEvent);
                return;
            } else if (action != 3) {
                return;
            }
        }
        this.mMotionPauseDetector.clear();
    }
}
