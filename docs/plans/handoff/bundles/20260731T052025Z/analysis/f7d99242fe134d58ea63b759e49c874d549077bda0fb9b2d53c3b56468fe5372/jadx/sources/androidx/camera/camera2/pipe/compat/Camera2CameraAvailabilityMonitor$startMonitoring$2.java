package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraAvailabilityMonitor$startMonitoring$2 implements AutoCloseable {
    public final CopyOnWriteArrayList listeners;
    public final ContextScope scope;

    public Camera2CameraAvailabilityMonitor$startMonitoring$2(Dispatcher dispatcher, String str) {
        ContextScope CoroutineScope = JobKt.CoroutineScope(((Threads) dispatcher.readyAsyncCalls).backgroundDispatcher.plus(new SupervisorJobImpl((Job) dispatcher.runningAsyncCalls)));
        this.scope = CoroutineScope;
        this.listeners = new CopyOnWriteArrayList();
        JobKt.launch$default(CoroutineScope, null, null, new DraggableNode$drag$2(dispatcher, str, this, (Continuation) null, 6), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitAvailableCamera(long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 r0 = (androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 r0 = new androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            java.util.concurrent.CopyOnWriteArrayList r5 = r5.listeners
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlinx.coroutines.CompletableDeferredImpl r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.CompletableDeferredImpl r8 = new kotlinx.coroutines.CompletableDeferredImpl
            r8.<init>()
            r5.add(r8)
            androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2 r1 = new androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2
            r1.<init>(r8, r2, r3)
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.JobKt.withTimeoutOrNull(r6, r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L4d
            return r7
        L4d:
            r4 = r8
            r8 = r6
            r6 = r4
        L50:
            if (r8 == 0) goto L53
            goto L54
        L53:
            r3 = 0
        L54:
            r5.remove(r6)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2.awaitAvailableCamera(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        JobKt.cancel(this.scope, (CancellationException) null);
    }
}
