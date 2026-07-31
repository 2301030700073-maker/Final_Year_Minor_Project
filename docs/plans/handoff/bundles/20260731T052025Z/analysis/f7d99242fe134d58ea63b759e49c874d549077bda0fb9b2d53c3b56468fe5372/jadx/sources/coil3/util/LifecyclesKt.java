package coil3.util;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LifecyclesKt {
    /* JADX WARN: Removed duplicated region for block: B:14:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitStarted(androidx.lifecycle.Lifecycle r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof coil3.util.LifecyclesKt$awaitStarted$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = (coil3.util.LifecyclesKt$awaitStarted$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 1
            if (r1 == 0) goto L38
            if (r1 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref$ObjectRef) r5
            java.lang.Object r0 = r0.L$0
            androidx.lifecycle.Lifecycle r0 = (androidx.lifecycle.Lifecycle) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2f
            goto L75
        L2f:
            r6 = move-exception
            goto L84
        L31:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            androidx.lifecycle.LifecycleRegistry r6 = (androidx.lifecycle.LifecycleRegistry) r6
            androidx.lifecycle.Lifecycle$State r6 = r6.state
            androidx.lifecycle.Lifecycle$State r1 = androidx.lifecycle.Lifecycle.State.STARTED
            int r6 = r6.compareTo(r1)
            if (r6 < 0) goto L49
            return r2
        L49:
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L7f
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L7f
            r0.label = r3     // Catch: java.lang.Throwable -> L7f
            kotlinx.coroutines.CancellableContinuationImpl r1 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L7f
            kotlin.coroutines.Continuation r0 = kotlinx.atomicfu.AtomicFU.intercepted(r0)     // Catch: java.lang.Throwable -> L7f
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L7f
            r1.initCancellability()     // Catch: java.lang.Throwable -> L7f
            coil3.util.LifecyclesKt$awaitStarted$2$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$2$1     // Catch: java.lang.Throwable -> L7f
            r0.<init>()     // Catch: java.lang.Throwable -> L7f
            r6.element = r0     // Catch: java.lang.Throwable -> L7f
            r5.addObserver(r0)     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r0 = r1.getResult()     // Catch: java.lang.Throwable -> L7f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L73
            return r1
        L73:
            r0 = r5
            r5 = r6
        L75:
            java.lang.Object r5 = r5.element
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 == 0) goto L7e
            r0.removeObserver(r5)
        L7e:
            return r2
        L7f:
            r0 = move-exception
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L84:
            java.lang.Object r5 = r5.element
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 == 0) goto L8d
            r0.removeObserver(r5)
        L8d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.LifecyclesKt.awaitStarted(androidx.lifecycle.Lifecycle, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void removeAndAddObserver(Lifecycle lifecycle, LifecycleObserver lifecycleObserver) {
        lifecycle.removeObserver(lifecycleObserver);
        lifecycle.addObserver(lifecycleObserver);
    }
}
