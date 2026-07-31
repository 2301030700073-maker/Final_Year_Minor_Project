package androidx.window.layout.adapter.sidecar;

import android.os.IBinder;
import androidx.window.layout.adapter.sidecar.SidecarAdapter;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DistinctElementSidecarCallback implements SidecarInterface.SidecarCallback {
    public final SidecarAdapter mAdapter;
    public final SidecarInterface.SidecarCallback mCallback;
    public SidecarDeviceState mLastDeviceState;
    public final Object mLock = new Object();
    public final WeakHashMap mActivityWindowLayoutInfo = new WeakHashMap();

    public DistinctElementSidecarCallback(SidecarAdapter sidecarAdapter, SidecarInterface.SidecarCallback sidecarCallback) {
        this.mAdapter = sidecarAdapter;
        this.mCallback = sidecarCallback;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001f, code lost:
    
        if (androidx.window.layout.adapter.sidecar.SidecarAdapter.Companion.getSidecarDevicePosture$window_release(r2) == androidx.window.layout.adapter.sidecar.SidecarAdapter.Companion.getSidecarDevicePosture$window_release(r4)) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDeviceStateChanged(androidx.window.sidecar.SidecarDeviceState r4) {
        /*
            r3 = this;
            if (r4 != 0) goto L3
            return
        L3:
            java.lang.Object r0 = r3.mLock
            monitor-enter(r0)
            androidx.window.layout.adapter.sidecar.SidecarAdapter r1 = r3.mAdapter     // Catch: java.lang.Throwable -> L23
            androidx.window.sidecar.SidecarDeviceState r2 = r3.mLastDeviceState     // Catch: java.lang.Throwable -> L23
            r1.getClass()     // Catch: java.lang.Throwable -> L23
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)     // Catch: java.lang.Throwable -> L23
            if (r1 == 0) goto L14
            goto L21
        L14:
            if (r2 != 0) goto L17
            goto L25
        L17:
            int r1 = androidx.window.layout.adapter.sidecar.SidecarAdapter.Companion.getSidecarDevicePosture$window_release(r2)     // Catch: java.lang.Throwable -> L23
            int r2 = androidx.window.layout.adapter.sidecar.SidecarAdapter.Companion.getSidecarDevicePosture$window_release(r4)     // Catch: java.lang.Throwable -> L23
            if (r1 != r2) goto L25
        L21:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            return
        L23:
            r3 = move-exception
            goto L2e
        L25:
            r3.mLastDeviceState = r4     // Catch: java.lang.Throwable -> L23
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            androidx.window.sidecar.SidecarInterface$SidecarCallback r3 = r3.mCallback
            r3.onDeviceStateChanged(r4)
            return
        L2e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L23
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.adapter.sidecar.DistinctElementSidecarCallback.onDeviceStateChanged(androidx.window.sidecar.SidecarDeviceState):void");
    }

    public void onWindowLayoutChanged(IBinder iBinder, SidecarWindowLayoutInfo sidecarWindowLayoutInfo) {
        boolean isEqualSidecarDisplayFeatures;
        synchronized (this.mLock) {
            try {
                SidecarWindowLayoutInfo sidecarWindowLayoutInfo2 = (SidecarWindowLayoutInfo) this.mActivityWindowLayoutInfo.get(iBinder);
                this.mAdapter.getClass();
                if (Intrinsics.areEqual(sidecarWindowLayoutInfo2, sidecarWindowLayoutInfo)) {
                    isEqualSidecarDisplayFeatures = true;
                } else {
                    if (sidecarWindowLayoutInfo2 != null && sidecarWindowLayoutInfo != null) {
                        isEqualSidecarDisplayFeatures = SidecarAdapter.isEqualSidecarDisplayFeatures(SidecarAdapter.Companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo2), SidecarAdapter.Companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo));
                    }
                    isEqualSidecarDisplayFeatures = false;
                }
                if (isEqualSidecarDisplayFeatures) {
                    return;
                }
                this.mActivityWindowLayoutInfo.put(iBinder, sidecarWindowLayoutInfo);
                this.mCallback.onWindowLayoutChanged(iBinder, sidecarWindowLayoutInfo);
            } finally {
            }
        }
    }
}
