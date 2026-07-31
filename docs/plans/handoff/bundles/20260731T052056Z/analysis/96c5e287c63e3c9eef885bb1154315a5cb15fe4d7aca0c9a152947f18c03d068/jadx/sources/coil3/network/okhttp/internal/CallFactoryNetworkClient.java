package coil3.network.okhttp.internal;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallFactoryNetworkClient {
    public final OkHttpClient callFactory;

    public /* synthetic */ CallFactoryNetworkClient(OkHttpClient okHttpClient) {
        this.callFactory = okHttpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x005c, code lost:
    
        if (r11 == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: executeRequest-impl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m783executeRequestimpl(okhttp3.OkHttpClient r8, coil3.network.NetworkRequest r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            boolean r0 = r11 instanceof coil3.network.okhttp.internal.CallFactoryNetworkClient$executeRequest$1
            if (r0 == 0) goto L13
            r0 = r11
            coil3.network.okhttp.internal.CallFactoryNetworkClient$executeRequest$1 r0 = (coil3.network.okhttp.internal.CallFactoryNetworkClient$executeRequest$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.okhttp.internal.CallFactoryNetworkClient$executeRequest$1 r0 = new coil3.network.okhttp.internal.CallFactoryNetworkClient$executeRequest$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4f
            if (r2 == r5) goto L44
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L36
            java.lang.Object r8 = r0.L$0
            java.io.Closeable r8 = (java.io.Closeable) r8
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L33
            goto Lad
        L33:
            r9 = move-exception
            goto Lb5
        L36:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r6
        L3c:
            java.lang.Object r8 = r0.L$0
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L97
        L44:
            okhttp3.OkHttpClient r8 = r0.L$1
            java.lang.Object r9 = r0.L$0
            r10 = r9
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5f
        L4f:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r10
            r0.L$1 = r8
            r0.label = r5
            okhttp3.Request r11 = androidx.work.Operation$State.toRequest(r9, r0)
            if (r11 != r1) goto L5f
            goto Lab
        L5f:
            okhttp3.Request r11 = (okhttp3.Request) r11
            r8.getClass()
            r11.getClass()
            okhttp3.internal.connection.RealCall r9 = new okhttp3.internal.connection.RealCall
            r9.<init>(r8, r11)
            r0.L$0 = r10
            r0.L$1 = r6
            r0.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r8 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r11 = kotlin.ExceptionsKt.intercepted(r0)
            r8.<init>(r5, r11)
            r8.initCancellability()
            coil3.network.okhttp.internal.CallsKt$await$2$1 r11 = new coil3.network.okhttp.internal.CallsKt$await$2$1
            r2 = 0
            r11.<init>(r2, r9)
            r8.invokeOnCancellation(r11)
            retrofit2.KotlinExtensions$await$2$2 r11 = new retrofit2.KotlinExtensions$await$2$2
            r11.<init>(r8, r5)
            r9.enqueue(r11)
            java.lang.Object r11 = r8.getResult()
            if (r11 != r1) goto L96
            goto Lab
        L96:
            r8 = r10
        L97:
            r9 = r11
            java.io.Closeable r9 = (java.io.Closeable) r9
            r10 = r9
            okhttp3.Response r10 = (okhttp3.Response) r10     // Catch: java.lang.Throwable -> Lb1
            coil3.network.NetworkResponse r10 = androidx.work.Operation$State.toNetworkResponse(r10)     // Catch: java.lang.Throwable -> Lb1
            r0.L$0 = r9     // Catch: java.lang.Throwable -> Lb1
            r0.label = r3     // Catch: java.lang.Throwable -> Lb1
            java.lang.Object r11 = r8.invoke(r10, r0)     // Catch: java.lang.Throwable -> Lb1
            if (r11 != r1) goto Lac
        Lab:
            return r1
        Lac:
            r8 = r9
        Lad:
            kotlin.ResultKt.closeFinally(r8, r6)
            return r11
        Lb1:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        Lb5:
            throw r9     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            r10 = move-exception
            kotlin.ResultKt.closeFinally(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClient.m783executeRequestimpl(okhttp3.OkHttpClient, coil3.network.NetworkRequest, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CallFactoryNetworkClient) {
            return Intrinsics.areEqual(this.callFactory, ((CallFactoryNetworkClient) obj).callFactory);
        }
        return false;
    }

    public final int hashCode() {
        return this.callFactory.hashCode();
    }

    public final String toString() {
        return "CallFactoryNetworkClient(callFactory=" + this.callFactory + ")";
    }
}
