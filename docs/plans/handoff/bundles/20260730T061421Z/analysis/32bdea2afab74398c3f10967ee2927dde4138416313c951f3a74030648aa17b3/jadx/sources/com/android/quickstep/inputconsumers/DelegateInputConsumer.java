package com.android.quickstep.inputconsumers;

import android.view.MotionEvent;
import b.l.W;
import com.android.quickstep.InputConsumer;
import com.android.systemui.shared.system.InputMonitorCompat;

/* loaded from: classes.dex */
public abstract class DelegateInputConsumer implements InputConsumer {
    public static final int STATE_ACTIVE = 1;
    public static final int STATE_DELEGATE_ACTIVE = 2;
    public static final int STATE_INACTIVE = 0;
    public final InputConsumer mDelegate;
    public final InputMonitorCompat mInputMonitor;
    public int mState = 0;

    public DelegateInputConsumer(InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        this.mDelegate = inputConsumer;
        this.mInputMonitor = inputMonitorCompat;
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return this.mDelegate.allowInterceptByParent() && this.mState != 1;
    }

    @Override // com.android.quickstep.InputConsumer
    public InputConsumer getActiveConsumerInHierarchy() {
        return this.mState == 1 ? this : this.mDelegate.getActiveConsumerInHierarchy();
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mDelegate.onConsumerAboutToBeSwitched();
    }

    public void setActive(MotionEvent motionEvent) {
        this.mState = 1;
        W.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitor.pilferPointers();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mDelegate.onMotionEvent(obtain);
        obtain.recycle();
    }
}
