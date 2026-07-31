package androidx.camera.camera2.impl;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import java.util.LinkedList;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StillCaptureRequestControl implements UseCaseCameraControl {
    public UseCaseCameraRequestControl _requestControl;
    public final FlashControl flashControl;
    public final MutexImpl mutex;
    public final LinkedList pendingRequests;
    public final UseCaseThreads threads;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class CaptureRequest {
    }

    public StillCaptureRequestControl(FlashControl flashControl, UseCaseThreads useCaseThreads) {
        flashControl.getClass();
        useCaseThreads.getClass();
        this.flashControl = flashControl;
        this.threads = useCaseThreads;
        this.mutex = new MutexImpl();
        this.pendingRequests = new LinkedList();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$submitRequest(androidx.camera.camera2.impl.StillCaptureRequestControl r5, androidx.camera.camera2.impl.StillCaptureRequestControl.CaptureRequest r6, androidx.camera.camera2.impl.UseCaseCameraRequestControl r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5.getClass()
            boolean r0 = r8 instanceof androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1
            if (r0 == 0) goto L16
            r0 = r8
            androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1 r0 = (androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1 r0 = new androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1
            r0.<init>(r5, r8)
        L1b:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            java.lang.String r4 = "CXCP"
            if (r1 == 0) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r8)
            goto L60
        L2b:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.isDebugEnabled(r4)
            if (r8 == 0) goto L53
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "StillCaptureRequestControl: submitting "
            r8.<init>(r1)
            r8.append(r6)
            java.lang.String r6 = " at "
            r8.append(r6)
            r8.append(r7)
            java.lang.String r6 = r8.toString()
            android.util.Log.d(r4, r6)
        L53:
            androidx.camera.camera2.impl.FlashControl r5 = r5.flashControl
            r0.label = r3
            java.lang.Object r8 = r5.awaitFlashModeUpdate(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r5) goto L60
            return r5
        L60:
            java.lang.Number r8 = (java.lang.Number) r8
            r8.intValue()
            boolean r5 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.isDebugEnabled(r4)
            if (r5 == 0) goto L70
            java.lang.String r5 = "StillCaptureRequestControl: Issuing single capture"
            android.util.Log.d(r4, r5)
        L70:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.StillCaptureRequestControl.access$submitRequest(androidx.camera.camera2.impl.StillCaptureRequestControl, androidx.camera.camera2.impl.StillCaptureRequestControl$CaptureRequest, androidx.camera.camera2.impl.UseCaseCameraRequestControl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        JobKt.launch$default(this.threads.sequentialScope, null, null, new DraggableNode$drag$2(this, (Continuation) null, 4), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        JobKt.launch$default(this.threads.sequentialScope, null, null, new MutatorMutex$mutate$2(this, null), 3);
    }
}
