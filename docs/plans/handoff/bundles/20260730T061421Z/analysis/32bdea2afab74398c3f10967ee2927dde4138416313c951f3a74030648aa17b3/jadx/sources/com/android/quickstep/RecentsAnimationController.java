package com.android.quickstep;

import android.os.SystemClock;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.launcher3.util.Executors;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.RecentsAnimationControllerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class RecentsAnimationController {
    public static final String TAG = "RecentsAnimationController";
    public final boolean mAllowMinimizeSplitScreen;
    public final RecentsAnimationControllerCompat mController;
    public boolean mDisableInputProxyPending;
    public InputConsumer mInputConsumer;
    public InputConsumerController mInputConsumerController;
    public Supplier mInputProxySupplier;
    public final Consumer mOnFinishedListener;
    public boolean mTouchInProgress;
    public boolean mUseLauncherSysBarFlags = false;
    public boolean mSplitScreenMinimized = false;

    public RecentsAnimationController(RecentsAnimationControllerCompat recentsAnimationControllerCompat, boolean z, Consumer consumer) {
        this.mController = recentsAnimationControllerCompat;
        this.mOnFinishedListener = consumer;
        this.mAllowMinimizeSplitScreen = z;
    }

    private void disableInputProxy() {
        if (this.mInputConsumer != null && this.mTouchInProgress) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 0);
            this.mInputConsumer.onMotionEvent(obtain);
            obtain.recycle();
        }
        InputConsumerController inputConsumerController = this.mInputConsumerController;
        if (inputConsumerController != null) {
            inputConsumerController.setInputListener(null);
        }
        this.mInputProxySupplier = null;
    }

    private void finishAndDisableInputProxy(boolean z, Runnable runnable, boolean z2) {
        disableInputProxy();
        finishController(z, runnable, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onInputConsumerEvent(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            onInputConsumerMotionEvent((MotionEvent) inputEvent);
            return false;
        }
        if (!(inputEvent instanceof KeyEvent)) {
            return false;
        }
        if (this.mInputConsumer == null) {
            this.mInputConsumer = (InputConsumer) this.mInputProxySupplier.get();
        }
        this.mInputConsumer.onKeyEvent((KeyEvent) inputEvent);
        return true;
    }

    private boolean onInputConsumerMotionEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (!this.mTouchInProgress && action != 0) {
            Log.w(TAG, "Received non-down motion before down motion: " + action);
            return false;
        }
        if (this.mTouchInProgress && action == 0) {
            Log.w(TAG, "Received down motion while touch was already in progress");
            return false;
        }
        if (action == 0) {
            this.mTouchInProgress = true;
            if (this.mInputConsumer == null) {
                this.mInputConsumer = (InputConsumer) this.mInputProxySupplier.get();
            }
        } else if (action == 3 || action == 1) {
            this.mTouchInProgress = false;
            if (this.mDisableInputProxyPending) {
                this.mDisableInputProxyPending = false;
                disableInputProxy();
            }
        }
        InputConsumer inputConsumer = this.mInputConsumer;
        if (inputConsumer != null) {
            inputConsumer.onMotionEvent(motionEvent);
        }
        return true;
    }

    public /* synthetic */ void b() {
        this.mController.cleanupScreenshot();
    }

    public /* synthetic */ void c() {
        this.mController.hideCurrentInputMethod();
        this.mController.setInputConsumerEnabled(true);
    }

    public void cleanupScreenshot() {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.L0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.b();
            }
        });
    }

    public /* synthetic */ void d(boolean z, boolean z2, Runnable runnable) {
        this.mController.setInputConsumerEnabled(false);
        this.mController.finish(z, z2);
        if (runnable != null) {
            Executors.MAIN_EXECUTOR.execute(runnable);
        }
    }

    public /* synthetic */ void e(boolean z) {
        this.mController.setAnimationTargetsBehindSystemBars(!z);
    }

    public void enableInputConsumer() {
        Executors.UI_HELPER_EXECUTOR.submit(new Runnable() { // from class: c.a.b.O0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.c();
            }
        });
    }

    public void enableInputProxy(InputConsumerController inputConsumerController, Supplier supplier) {
        this.mInputProxySupplier = supplier;
        this.mInputConsumerController = inputConsumerController;
        inputConsumerController.setInputListener(new InputConsumerController.InputListener() { // from class: c.a.b.N0
            @Override // com.android.systemui.shared.system.InputConsumerController.InputListener
            public final boolean onInputEvent(InputEvent inputEvent) {
                boolean onInputConsumerEvent;
                onInputConsumerEvent = RecentsAnimationController.this.onInputConsumerEvent(inputEvent);
                return onInputConsumerEvent;
            }
        });
    }

    public void finish(boolean z, Runnable runnable) {
        finish(z, runnable, false);
    }

    public void finishAnimationToApp() {
        finishAndDisableInputProxy(false, null, false);
    }

    public void finishAnimationToHome() {
        finishAndDisableInputProxy(true, null, false);
    }

    public void finishController(final boolean z, final Runnable runnable, final boolean z2) {
        this.mOnFinishedListener.accept(this);
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.M0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationController.this.d(z, z2, runnable);
            }
        });
    }

    public RecentsAnimationControllerCompat getController() {
        return this.mController;
    }

    public boolean removeTaskTarget(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        return this.mController.removeTask(remoteAnimationTargetCompat.taskId);
    }

    public ThumbnailData screenshotTask(int i) {
        return this.mController.screenshotTask(i);
    }

    public void setDeferCancelUntilNextTransition(boolean z, boolean z2) {
        this.mController.setDeferCancelUntilNextTransition(z, z2);
    }

    public void setSplitScreenMinimized(final boolean z) {
        if (this.mAllowMinimizeSplitScreen && this.mSplitScreenMinimized != z) {
            this.mSplitScreenMinimized = z;
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.Q0
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2 = z;
                    SystemUiProxy systemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.mValue;
                    if (systemUiProxy != null) {
                        systemUiProxy.setSplitScreenMinimized(z2);
                    }
                }
            });
        }
    }

    public void setUseLauncherSystemBarFlags(final boolean z) {
        if (this.mUseLauncherSysBarFlags != z) {
            this.mUseLauncherSysBarFlags = z;
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.P0
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsAnimationController.this.e(z);
                }
            });
        }
    }

    public void finish(boolean z, Runnable runnable, boolean z2) {
        if (!z || !this.mTouchInProgress) {
            finishAndDisableInputProxy(z, runnable, z2);
        } else {
            this.mDisableInputProxyPending = true;
            finishController(z, runnable, z2);
        }
    }
}
