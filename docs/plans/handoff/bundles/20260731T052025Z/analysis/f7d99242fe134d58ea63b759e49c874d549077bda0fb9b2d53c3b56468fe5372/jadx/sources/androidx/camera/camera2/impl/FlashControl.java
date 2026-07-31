package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil;
import kotlin.Unit;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlashControl implements UseCaseCameraControl {
    public volatile int _flashMode;
    public UseCaseCameraRequestControl _requestControl;
    public CompletableDeferredImpl _updateSignal;
    public final State3AControl state3AControl;

    public FlashControl(CameraPipeCameraProperties cameraPipeCameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads, TorchControl torchControl, TargetAspectRatio targetAspectRatio) {
        cameraPipeCameraProperties.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        torchControl.getClass();
        this.state3AControl = state3AControl;
        this._flashMode = 2;
        JobKt.CompletableDeferred(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitFlashModeUpdate(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1 r0 = (androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1 r0 = new androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            java.lang.String r4 = "CXCP"
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2b
            int r5 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L59
        L2b:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.isDebugEnabled(r4)
            if (r6 == 0) goto L40
            java.lang.String r6 = "FlashControl: Waiting for any ongoing update to be completed"
            android.util.Log.d(r4, r6)
        L40:
            int r6 = r5._flashMode
            kotlinx.coroutines.CompletableDeferredImpl r5 = r5._updateSignal
            if (r5 == 0) goto L47
            goto L4d
        L47:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.CompletableDeferredImpl r5 = kotlinx.coroutines.JobKt.CompletableDeferred(r5)
        L4d:
            r0.I$0 = r6
            r0.label = r3
            java.lang.Object r5 = r5.join(r0)
            if (r5 != r1) goto L58
            return r1
        L58:
            r5 = r6
        L59:
            boolean r6 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.isDebugEnabled(r4)
            if (r6 == 0) goto L64
            java.lang.String r6 = "awaitFlashModeUpdate: initialFlashMode = "
            androidx.camera.camera2.pipe.CameraDevices$CC.m32m(r5, r6, r4)
        L64:
            java.lang.Integer r6 = new java.lang.Integer
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.FlashControl.awaitFlashModeUpdate(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        this._flashMode = 2;
        CompletableDeferredImpl completableDeferredImpl = this._updateSignal;
        if (completableDeferredImpl != null) {
            CameraDevices$CC.m("There is a new flash mode being set or camera was closed", completableDeferredImpl);
        }
        this._updateSignal = null;
        setFlashAsync(2, true);
    }

    public final CompletableDeferredImpl setFlashAsync(int i, boolean z) {
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            StringBuilder m30m = CameraDevices$CC.m30m(i, "setFlashAsync: flashMode = ", ", requestControl = ");
            m30m.append(this._requestControl);
            Log.d("CXCP", m30m.toString());
        }
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        if (this._requestControl == null) {
            CameraDevices$CC.m("Camera is not active.", completableDeferredImpl);
            return completableDeferredImpl;
        }
        this._flashMode = i;
        CompletableDeferredImpl completableDeferredImpl2 = this._updateSignal;
        if (z) {
            if (completableDeferredImpl2 != null) {
                CameraDevices$CC.m("There is a new flash mode being set or camera was closed", completableDeferredImpl2);
            }
            this._updateSignal = null;
        } else if (completableDeferredImpl2 != null) {
            DBUtil.propagateTo(completableDeferredImpl, completableDeferredImpl2);
        }
        this._updateSignal = completableDeferredImpl;
        State3AControl state3AControl = this.state3AControl;
        synchronized (state3AControl.lock) {
            state3AControl._flashMode = i;
        }
        DBUtil.propagateTo(state3AControl.update(), completableDeferredImpl);
        return completableDeferredImpl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        setFlashAsync(this._flashMode, false);
    }
}
