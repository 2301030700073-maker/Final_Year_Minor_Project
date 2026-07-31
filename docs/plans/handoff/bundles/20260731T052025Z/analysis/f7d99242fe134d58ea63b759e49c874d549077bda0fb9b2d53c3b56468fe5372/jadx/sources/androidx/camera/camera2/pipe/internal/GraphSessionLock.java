package androidx.camera.camera2.pipe.internal;

import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphSessionLock {
    public final MutexImpl mutex = new MutexImpl();

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquireToken$camera_camera2_pipe(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.camera.camera2.pipe.internal.GraphSessionLock$acquireToken$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.camera.camera2.pipe.internal.GraphSessionLock$acquireToken$1 r0 = (androidx.camera.camera2.pipe.internal.GraphSessionLock$acquireToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.internal.GraphSessionLock$acquireToken$1 r0 = new androidx.camera.camera2.pipe.internal.GraphSessionLock$acquireToken$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            kotlinx.coroutines.sync.MutexImpl r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L40
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.sync.MutexImpl r4 = r4.mutex
            r0.L$0 = r4
            r0.label = r2
            java.lang.Object r5 = r4.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L40
            return r0
        L40:
            androidx.camera.camera2.pipe.core.MutexToken r5 = new androidx.camera.camera2.pipe.core.MutexToken
            r5.<init>(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.GraphSessionLock.acquireToken$camera_camera2_pipe(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
