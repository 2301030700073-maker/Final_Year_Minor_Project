package com.android.launcher3.touch;

import android.graphics.PointF;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.OptionsPopupView;

/* loaded from: classes.dex */
public class WorkspaceTouchListener extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
    public final GestureDetector mGestureDetector;
    public final Launcher mLauncher;
    public final float mTouchSlop;
    public final Workspace mWorkspace;
    public final Rect mTempRect = new Rect();
    public final PointF mTouchDownPoint = new PointF();
    public int mLongPressState = 0;

    public WorkspaceTouchListener(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
        this.mTouchSlop = ViewConfiguration.get(launcher).getScaledTouchSlop() * 2;
        this.mGestureDetector = new GestureDetector(workspace.getContext(), this);
    }

    public final boolean canHandleLongPress() {
        return AbstractFloatingView.getTopOpenView(this.mLauncher) == null && this.mLauncher.isInState(LauncherState.NORMAL);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.mLongPressState == 1) {
            W.recordEvent("Main", "Workspace.longPress");
            if (!canHandleLongPress()) {
                this.mLongPressState = 0;
                return;
            }
            this.mLongPressState = 2;
            this.mWorkspace.getParent().requestDisallowInterceptTouchEvent(true);
            this.mWorkspace.performHapticFeedback(0, 1);
            this.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_WORKSPACE_LONGPRESS);
            Launcher launcher = this.mLauncher;
            PointF pointF = this.mTouchDownPoint;
            OptionsPopupView.showDefaultOptions(launcher, pointF.x, pointF.y);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d0  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r19, android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.WorkspaceTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
