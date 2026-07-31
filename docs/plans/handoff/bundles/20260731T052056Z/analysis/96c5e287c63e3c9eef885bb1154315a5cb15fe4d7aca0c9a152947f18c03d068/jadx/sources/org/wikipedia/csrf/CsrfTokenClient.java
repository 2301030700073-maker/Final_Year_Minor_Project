package org.wikipedia.csrf;

import java.util.concurrent.Semaphore;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CsrfTokenClient {
    public static final CsrfTokenClient INSTANCE = new CsrfTokenClient();
    public static final Semaphore MUTEX = new Semaphore(1);

    public static boolean tokenRequiresLogin(String str) {
        return Headers.Companion.isLoggedIn() && !Headers.Companion.isTemporaryAccount() && Intrinsics.areEqual(str, "+\\");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getToken(org.wikipedia.dataclient.WikiSite r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.csrf.CsrfTokenClient$getToken$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.csrf.CsrfTokenClient$getToken$1 r0 = (org.wikipedia.csrf.CsrfTokenClient$getToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.csrf.CsrfTokenClient$getToken$1 r0 = new org.wikipedia.csrf.CsrfTokenClient$getToken$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$3
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4d
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r2
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r5 = androidx.compose.animation.core.Animation.CC.m22m(r5)
            java.lang.String r1 = ""
            r5.element = r1
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.csrf.CsrfTokenClient$getToken$2 r4 = new org.wikipedia.csrf.CsrfTokenClient$getToken$2
            r4.<init>(r6, r7, r5, r2)
            r0.L$3 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r1, r4, r0)
            if (r6 != r8) goto L4c
            return r8
        L4c:
            r6 = r5
        L4d:
            java.lang.Object r5 = r6.element
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.csrf.CsrfTokenClient.getToken(org.wikipedia.dataclient.WikiSite, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
