package androidx.glance.session;

import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionManagerImpl implements SessionManager {
    public final MutexImpl mutex = new MutexImpl();
    public final SessionManagerImpl$scope$1 scope = new SessionManagerImpl$scope$1(this);

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
    
        if (r9.lock(r0) == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runWithLock(kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.glance.session.SessionManagerImpl$runWithLock$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.session.SessionManagerImpl$runWithLock$1 r0 = (androidx.glance.session.SessionManagerImpl$runWithLock$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.session.SessionManagerImpl$runWithLock$1 r0 = new androidx.glance.session.SessionManagerImpl$runWithLock$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2f
            goto L72
        L2f:
            r8 = move-exception
            goto L78
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r5
        L37:
            kotlinx.coroutines.sync.MutexImpl r7 = r0.L$2
            kotlin.coroutines.jvm.internal.SuspendLambda r8 = r0.L$1
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            java.lang.Object r2 = r0.L$0
            androidx.glance.session.SessionManagerImpl r2 = (androidx.glance.session.SessionManagerImpl) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r7
            r7 = r2
            goto L5e
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.L$1 = r9
            kotlinx.coroutines.sync.MutexImpl r9 = r7.mutex
            r0.L$2 = r9
            r0.label = r4
            java.lang.Object r2 = r9.lock(r0)
            if (r2 != r1) goto L5e
            goto L6e
        L5e:
            androidx.glance.session.SessionManagerImpl$scope$1 r7 = r7.scope     // Catch: java.lang.Throwable -> L76
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L76
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L76
            r0.L$2 = r5     // Catch: java.lang.Throwable -> L76
            r0.label = r3     // Catch: java.lang.Throwable -> L76
            java.lang.Object r7 = r8.invoke(r7, r0)     // Catch: java.lang.Throwable -> L76
            if (r7 != r1) goto L6f
        L6e:
            return r1
        L6f:
            r6 = r9
            r9 = r7
            r7 = r6
        L72:
            r7.unlock(r5)
            return r9
        L76:
            r8 = move-exception
            r7 = r9
        L78:
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionManagerImpl.runWithLock(kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
