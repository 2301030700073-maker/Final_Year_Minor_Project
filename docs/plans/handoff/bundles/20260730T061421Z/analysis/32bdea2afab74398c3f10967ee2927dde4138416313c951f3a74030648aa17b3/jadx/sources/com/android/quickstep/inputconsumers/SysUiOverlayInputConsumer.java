package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.view.MotionEvent;
import b.l.W;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.inputconsumers.SysUiOverlayInputConsumer;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class SysUiOverlayInputConsumer implements InputConsumer, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    public final Context mContext;
    public final InputMonitorCompat mInputMonitor;
    public final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public SysUiOverlayInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, InputMonitorCompat inputMonitorCompat) {
        this.mContext = context;
        this.mInputMonitor = inputMonitorCompat;
        this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(context, true, recentsAnimationDeviceState.getNavBarPosition(), new Runnable() { // from class: c.a.b.Z1.h
            @Override // java.lang.Runnable
            public final void run() {
                SysUiOverlayInputConsumer.this.onInterceptTouch();
            }
        }, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInterceptTouch() {
        if (this.mInputMonitor != null) {
            W.recordEvent("Pilfer", "pilferPointers");
            this.mInputMonitor.pilferPointers();
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mTriggerSwipeUpTracker.interceptedTouch();
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 1024;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mTriggerSwipeUpTracker.onMotionEvent(motionEvent);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z, PointF pointF) {
        this.mContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
