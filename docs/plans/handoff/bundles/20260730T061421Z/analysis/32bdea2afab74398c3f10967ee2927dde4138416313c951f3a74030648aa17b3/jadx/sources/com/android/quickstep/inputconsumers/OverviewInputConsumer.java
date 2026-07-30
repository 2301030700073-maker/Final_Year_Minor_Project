package com.android.quickstep.inputconsumers;

import android.view.KeyEvent;
import android.view.MotionEvent;
import b.l.W;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public class OverviewInputConsumer implements InputConsumer {
    public final StatefulActivity mActivity;
    public final BaseActivityInterface mActivityInterface;
    public final InputMonitorCompat mInputMonitor;
    public final int[] mLocationOnScreen = new int[2];
    public final boolean mStartingInActivityBounds;
    public final BaseDragLayer mTarget;
    public boolean mTargetHandledTouch;

    public OverviewInputConsumer(GestureState gestureState, StatefulActivity statefulActivity, InputMonitorCompat inputMonitorCompat, boolean z) {
        this.mActivity = statefulActivity;
        this.mInputMonitor = inputMonitorCompat;
        this.mStartingInActivityBounds = z;
        this.mActivityInterface = gestureState.getActivityInterface();
        BaseDragLayer dragLayer = statefulActivity.getDragLayer();
        this.mTarget = dragLayer;
        dragLayer.getLocationOnScreen(this.mLocationOnScreen);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mTargetHandledTouch;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 2;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onKeyEvent(KeyEvent keyEvent) {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            this.mActivity.dispatchKeyEvent(keyEvent);
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        int edgeFlags = motionEvent.getEdgeFlags();
        if (!this.mStartingInActivityBounds) {
            motionEvent.setEdgeFlags(edgeFlags | 256);
        }
        int[] iArr = this.mLocationOnScreen;
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        boolean proxyTouchEvent = this.mTarget.proxyTouchEvent(motionEvent, this.mStartingInActivityBounds);
        int[] iArr2 = this.mLocationOnScreen;
        motionEvent.offsetLocation(iArr2[0], iArr2[1]);
        motionEvent.setEdgeFlags(edgeFlags);
        if (this.mTargetHandledTouch || !proxyTouchEvent) {
            return;
        }
        this.mTargetHandledTouch = true;
        if (!this.mStartingInActivityBounds) {
            this.mActivityInterface.closeOverlay();
            ActivityManagerWrapper.getInstance().closeSystemWindows(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
            ActiveGestureLog.INSTANCE.addLog("startQuickstep");
        }
        if (this.mInputMonitor != null) {
            W.recordEvent("Pilfer", "pilferPointers");
            this.mInputMonitor.pilferPointers();
        }
    }
}
