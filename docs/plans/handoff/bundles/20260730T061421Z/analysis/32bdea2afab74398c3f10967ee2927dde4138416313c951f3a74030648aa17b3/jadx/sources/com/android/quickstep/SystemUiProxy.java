package com.android.quickstep;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.MotionEvent;
import c.a.c.a.a;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.recents.IPinnedStackAnimationListener;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.recents.model.Task;

/* loaded from: classes.dex */
public class SystemUiProxy implements ISystemUiProxy {
    public float mLastBackButtonAlpha;
    public boolean mLastBackButtonAnimate;
    public int mLastShelfHeight;
    public boolean mLastShelfVisible;
    public int mLastSystemUiStateFlags;
    public ISystemUiProxy mSystemUiProxy;
    public final IBinder.DeathRecipient mSystemUiProxyDeathRecipient = new IBinder.DeathRecipient() { // from class: c.a.b.g1
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            SystemUiProxy.this.b();
        }
    };
    public static final String TAG = SystemUiProxy.class.getSimpleName();
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.b.e1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new SystemUiProxy(context);
        }
    });

    public SystemUiProxy(Context context) {
    }

    private void linkToDeath() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.asBinder().linkToDeath(this.mSystemUiProxyDeathRecipient, 0);
            } catch (RemoteException unused) {
                Log.e(TAG, "Failed to link sysui proxy death recipient");
            }
        }
    }

    private void unlinkToDeath() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            iSystemUiProxy.asBinder().unlinkToDeath(this.mSystemUiProxyDeathRecipient, 0);
        }
    }

    public /* synthetic */ void a() {
        setProxy(null);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    public /* synthetic */ void b() {
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.h1
            @Override // java.lang.Runnable
            public final void run() {
                SystemUiProxy.this.a();
            }
        });
    }

    public float getLastBackButtonAlpha() {
        return this.mLastBackButtonAlpha;
    }

    public int getLastSystemUiStateFlags() {
        return this.mLastSystemUiStateFlags;
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public Rect getNonMinimizedSplitScreenSecondaryBounds() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy == null) {
            return null;
        }
        try {
            return iSystemUiProxy.getNonMinimizedSplitScreenSecondaryBounds();
        } catch (RemoteException e) {
            Log.w(TAG, "Failed call getNonMinimizedSplitScreenSecondaryBounds", e);
            return null;
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.handleImageAsScreenshot(bitmap, rect, insets, i);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call handleImageAsScreenshot", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.handleImageBundleAsScreenshot(bundle, rect, insets, taskKey);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call handleImageBundleAsScreenshot");
            }
        }
    }

    public boolean isActive() {
        return this.mSystemUiProxy != null;
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public Bundle monitorGestureInput(String str, int i) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy == null) {
            return null;
        }
        try {
            return iSystemUiProxy.monitorGestureInput(str, i);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed call monitorGestureInput: " + str, e);
            return null;
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyAccessibilityButtonClicked(int i) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyAccessibilityButtonClicked(i);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call notifyAccessibilityButtonClicked", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyAccessibilityButtonLongClicked() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyAccessibilityButtonLongClicked();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call notifyAccessibilityButtonLongClicked", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifySwipeToHomeFinished() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifySwipeToHomeFinished();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call setPinnedStackAnimationType", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onAssistantGestureCompletion(float f) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onAssistantGestureCompletion(f);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call onAssistantGestureCompletion", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onAssistantProgress(float f) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onAssistantProgress(f);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call onAssistantProgress with progress: " + f, e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onOverviewShown(boolean z) {
        onOverviewShown(z, TAG);
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onQuickSwitchToNewTask(int i) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onQuickSwitchToNewTask(i);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call onQuickSwitchToNewTask with arg: " + i, e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onSplitScreenInvoked() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onSplitScreenInvoked();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call onSplitScreenInvoked", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onStatusBarMotionEvent(MotionEvent motionEvent) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onStatusBarMotionEvent(motionEvent);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call onStatusBarMotionEvent", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setBackButtonAlpha(float f, boolean z) {
        boolean z2 = (Float.compare(f, this.mLastBackButtonAlpha) == 0 && z == this.mLastBackButtonAnimate) ? false : true;
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy == null || !z2) {
            return;
        }
        this.mLastBackButtonAlpha = f;
        this.mLastBackButtonAnimate = z;
        try {
            iSystemUiProxy.setBackButtonAlpha(f, z);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed call setBackButtonAlpha", e);
        }
    }

    public void setLastSystemUiStateFlags(int i) {
        this.mLastSystemUiStateFlags = i;
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setNavBarButtonAlpha(float f, boolean z) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.setNavBarButtonAlpha(f, z);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call setNavBarButtonAlpha", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setPinnedStackAnimationListener(IPinnedStackAnimationListener iPinnedStackAnimationListener) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.setPinnedStackAnimationListener(iPinnedStackAnimationListener);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call setPinnedStackAnimationListener", e);
            }
        }
    }

    public void setProxy(ISystemUiProxy iSystemUiProxy) {
        unlinkToDeath();
        this.mSystemUiProxy = iSystemUiProxy;
        linkToDeath();
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setShelfHeight(boolean z, int i) {
        boolean z2 = (z == this.mLastShelfVisible && i == this.mLastShelfHeight) ? false : true;
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy == null || !z2) {
            return;
        }
        this.mLastShelfVisible = z;
        this.mLastShelfHeight = i;
        try {
            iSystemUiProxy.setShelfHeight(z, i);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed call setShelfHeight visible: " + z + " height: " + i, e);
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setSplitScreenMinimized(boolean z) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.setSplitScreenMinimized(z);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call stopScreenPinning", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void startAssistant(Bundle bundle) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.startAssistant(bundle);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call startAssistant", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void startScreenPinning(int i) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.startScreenPinning(i);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call startScreenPinning", e);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void stopScreenPinning() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.stopScreenPinning();
            } catch (RemoteException e) {
                Log.w(TAG, "Failed call stopScreenPinning", e);
            }
        }
    }

    public void onOverviewShown(boolean z, String str) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onOverviewShown(z);
            } catch (RemoteException e) {
                StringBuilder f = a.f("Failed call onOverviewShown from: ");
                f.append(z ? "home" : "app");
                Log.w(str, f.toString(), e);
            }
        }
    }
}
