package com.android.launcher3.uioverrides.touchcontrollers;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import c.a.c.a.a;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.SystemUiProxy;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class StatusBarTouchController implements TouchController {
    public boolean mCanIntercept;
    public final SparseArray mDownEvents = new SparseArray();
    public int mLastAction;
    public final Launcher mLauncher;
    public final SystemUiProxy mSystemUiProxy;
    public final float mTouchSlop;

    public StatusBarTouchController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.b(launcher);
        this.mTouchSlop = ViewConfiguration.get(launcher).getScaledTouchSlop() * 2;
    }

    @Override // com.android.launcher3.util.TouchController
    public void dump(String str, PrintWriter printWriter) {
        StringBuilder g = a.g(str, "mCanIntercept:");
        g.append(this.mCanIntercept);
        printWriter.println(g.toString());
        printWriter.println(str + "mLastAction:" + MotionEvent.actionToString(this.mLastAction));
        printWriter.println(str + "mSysUiProxy available:" + ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).isActive());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    @Override // com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onControllerInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            int r0 = r9.getActionMasked()
            int r1 = r9.getActionIndex()
            int r2 = r9.getPointerId(r1)
            r3 = 0
            if (r0 != 0) goto L69
            com.android.launcher3.Launcher r4 = r8.mLauncher
            com.android.launcher3.LauncherState r5 = com.android.launcher3.LauncherState.NORMAL
            boolean r4 = r4.isInState(r5)
            if (r4 == 0) goto L50
            com.android.launcher3.Launcher r4 = r8.mLauncher
            r5 = 1148(0x47c, float:1.609E-42)
            com.android.launcher3.AbstractFloatingView r4 = com.android.launcher3.AbstractFloatingView.getTopOpenViewWithType(r4, r5)
            if (r4 == 0) goto L24
            goto L50
        L24:
            com.android.launcher3.Launcher r4 = r8.mLauncher
            com.android.launcher3.DeviceProfile r4 = r4.getDeviceProfile()
            float r5 = r9.getY()
            com.android.launcher3.Launcher r6 = r8.mLauncher
            com.android.launcher3.dragndrop.DragLayer r6 = r6.mDragLayer
            int r6 = r6.getHeight()
            android.graphics.Rect r4 = r4.mInsets
            int r4 = r4.bottom
            int r6 = r6 - r4
            float r4 = (float) r6
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 <= 0) goto L41
            goto L50
        L41:
            com.android.launcher3.util.MainThreadInitializedObject r4 = com.android.quickstep.SystemUiProxy.INSTANCE
            com.android.launcher3.Launcher r5 = r8.mLauncher
            java.lang.Object r4 = r4.b(r5)
            com.android.quickstep.SystemUiProxy r4 = (com.android.quickstep.SystemUiProxy) r4
            boolean r4 = r4.isActive()
            goto L51
        L50:
            r4 = r3
        L51:
            r8.mCanIntercept = r4
            if (r4 != 0) goto L56
            return r3
        L56:
            android.util.SparseArray r4 = r8.mDownEvents
            android.graphics.PointF r5 = new android.graphics.PointF
            float r6 = r9.getX()
            float r7 = r9.getY()
            r5.<init>(r6, r7)
            r4.put(r2, r5)
            goto L82
        L69:
            int r4 = r9.getActionMasked()
            r5 = 5
            if (r4 != r5) goto L82
            android.util.SparseArray r4 = r8.mDownEvents
            android.graphics.PointF r5 = new android.graphics.PointF
            float r6 = r9.getX(r1)
            float r7 = r9.getY(r1)
            r5.<init>(r6, r7)
            r4.put(r2, r5)
        L82:
            boolean r4 = r8.mCanIntercept
            if (r4 != 0) goto L87
            return r3
        L87:
            r4 = 2
            if (r0 != r4) goto Le3
            float r0 = r9.getY(r1)
            android.util.SparseArray r4 = r8.mDownEvents
            java.lang.Object r4 = r4.get(r2)
            android.graphics.PointF r4 = (android.graphics.PointF) r4
            float r4 = r4.y
            float r0 = r0 - r4
            float r1 = r9.getX(r1)
            android.util.SparseArray r4 = r8.mDownEvents
            java.lang.Object r2 = r4.get(r2)
            android.graphics.PointF r2 = (android.graphics.PointF) r2
            float r2 = r2.x
            float r1 = r1 - r2
            float r2 = r8.mTouchSlop
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto Ld7
            float r2 = java.lang.Math.abs(r1)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto Ld7
            int r0 = r9.getPointerCount()
            r2 = 1
            if (r0 != r2) goto Ld7
            r9.setAction(r3)
            com.android.quickstep.SystemUiProxy r0 = r8.mSystemUiProxy
            boolean r0 = r0.isActive()
            if (r0 == 0) goto Ld3
            int r0 = r9.getActionMasked()
            r8.mLastAction = r0
            com.android.quickstep.SystemUiProxy r0 = r8.mSystemUiProxy
            r0.onStatusBarMotionEvent(r9)
        Ld3:
            r8.setWindowSlippery(r2)
            return r2
        Ld7:
            float r9 = java.lang.Math.abs(r1)
            float r0 = r8.mTouchSlop
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto Le3
            r8.mCanIntercept = r3
        Le3:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.StatusBarTouchController.onControllerInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            return true;
        }
        if (this.mSystemUiProxy.isActive()) {
            this.mLastAction = motionEvent.getActionMasked();
            this.mSystemUiProxy.onStatusBarMotionEvent(motionEvent);
        }
        this.mLauncher.getUserEventDispatcher().logActionOnContainer(action == 1 ? 4 : 3, 2, 1, this.mLauncher.mWorkspace.getCurrentPage());
        setWindowSlippery(false);
        return true;
    }

    public final void setWindowSlippery(boolean z) {
        Window window = this.mLauncher.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z) {
            attributes.flags |= 536870912;
        } else {
            attributes.flags &= -536870913;
        }
        window.setAttributes(attributes);
    }
}
