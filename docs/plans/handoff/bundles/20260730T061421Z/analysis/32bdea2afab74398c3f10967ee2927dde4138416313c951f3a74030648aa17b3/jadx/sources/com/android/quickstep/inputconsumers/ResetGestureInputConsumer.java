package com.android.quickstep.inputconsumers;

import android.view.MotionEvent;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.TaskAnimationManager;

/* loaded from: classes.dex */
public class ResetGestureInputConsumer implements InputConsumer {
    public final TaskAnimationManager mTaskAnimationManager;

    public ResetGestureInputConsumer(TaskAnimationManager taskAnimationManager) {
        this.mTaskAnimationManager = taskAnimationManager;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 256;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            this.mTaskAnimationManager.finishRunningRecentsAnimation(false);
        }
    }
}
