package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import b.l.W;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.inputconsumers.OverviewWithoutFocusInputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class OverviewWithoutFocusInputConsumer implements InputConsumer, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    public final Context mContext;
    public final GestureState mGestureState;
    public final InputMonitorCompat mInputMonitor;
    public final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public OverviewWithoutFocusInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState, InputMonitorCompat inputMonitorCompat, boolean z) {
        this.mContext = context;
        this.mGestureState = gestureState;
        this.mInputMonitor = inputMonitorCompat;
        this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(context, z, recentsAnimationDeviceState.getNavBarPosition(), new Runnable() { // from class: c.a.b.Z1.f
            @Override // java.lang.Runnable
            public final void run() {
                OverviewWithoutFocusInputConsumer.this.onInterceptTouch();
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
        return 128;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mTriggerSwipeUpTracker.onMotionEvent(motionEvent);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z, PointF pointF) {
        this.mContext.startActivity(this.mGestureState.getHomeIntent());
        ActiveGestureLog.INSTANCE.addLog("startQuickstep");
        BaseActivity fromContext = BaseActivity.fromContext(this.mContext);
        GestureState gestureState = this.mGestureState;
        fromContext.getUserEventDispatcher().logActionOnContainer(z ? 4 : 3, 1, (gestureState == null || gestureState.getEndTarget() == null) ? 1 : this.mGestureState.getEndTarget().containerType, -1);
        fromContext.getUserEventDispatcher().setPreviousHomeGesture(true);
        StatsLogManager.StatsLogger withDstState = fromContext.getStatsLogManager().logger().withSrcState(2).withDstState(2);
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
        newBuilder2.setPageIndex(-1);
        newBuilder.copyOnWrite();
        LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
        withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
