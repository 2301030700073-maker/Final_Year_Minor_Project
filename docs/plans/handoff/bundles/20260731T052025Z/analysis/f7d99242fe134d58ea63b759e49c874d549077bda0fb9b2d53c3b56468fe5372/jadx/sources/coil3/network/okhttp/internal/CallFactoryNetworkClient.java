package coil3.network.okhttp.internal;

import coil3.network.NetworkClient;
import coil3.network.NetworkRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CallFactoryNetworkClient implements NetworkClient {
    private final Call.Factory callFactory;

    private /* synthetic */ CallFactoryNetworkClient(Call.Factory factory) {
        this.callFactory = factory;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CallFactoryNetworkClient m885boximpl(Call.Factory factory) {
        return new CallFactoryNetworkClient(factory);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m887equalsimpl(Call.Factory factory, Object obj) {
        return (obj instanceof CallFactoryNetworkClient) && Intrinsics.areEqual(factory, ((CallFactoryNetworkClient) obj).m892unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m888equalsimpl0(Call.Factory factory, Call.Factory factory2) {
        return Intrinsics.areEqual(factory, factory2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x005c, code lost:
    
        if (r11 == r6) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: executeRequest-impl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> java.lang.Object m889executeRequestimpl(okhttp3.Call.Factory r8, coil3.network.NetworkRequest r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.Continuation r11) {
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
            int r1 = r0.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L4f
            if (r1 == r4) goto L42
            if (r1 == r3) goto L3a
            if (r1 != r2) goto L34
            java.lang.Object r8 = r0.L$0
            java.io.Closeable r8 = (java.io.Closeable) r8
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L32
            goto L92
        L32:
            r9 = move-exception
            goto L9a
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r5
        L3a:
            java.lang.Object r8 = r0.L$0
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7c
        L42:
            java.lang.Object r8 = r0.L$1
            okhttp3.Call$Factory r8 = (okhttp3.Call.Factory) r8
            java.lang.Object r9 = r0.L$0
            r10 = r9
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5f
        L4f:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r10
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r11 = coil3.network.okhttp.internal.CallFactoryNetworkClientKt.access$toRequest(r9, r0)
            if (r11 != r6) goto L5f
            goto L90
        L5f:
            okhttp3.Request r11 = (okhttp3.Request) r11
            okhttp3.OkHttpClient r8 = (okhttp3.OkHttpClient) r8
            r8.getClass()
            r11.getClass()
            okhttp3.internal.connection.RealCall r9 = new okhttp3.internal.connection.RealCall
            r9.<init>(r8, r11)
            r0.L$0 = r10
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r11 = coil3.network.okhttp.internal.CallsKt.await(r9, r0)
            if (r11 != r6) goto L7b
            goto L90
        L7b:
            r8 = r10
        L7c:
            r9 = r11
            java.io.Closeable r9 = (java.io.Closeable) r9
            r10 = r9
            okhttp3.Response r10 = (okhttp3.Response) r10     // Catch: java.lang.Throwable -> L96
            coil3.network.NetworkResponse r10 = coil3.network.okhttp.internal.CallFactoryNetworkClientKt.access$toNetworkResponse(r10)     // Catch: java.lang.Throwable -> L96
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L96
            r0.label = r2     // Catch: java.lang.Throwable -> L96
            java.lang.Object r11 = r8.invoke(r10, r0)     // Catch: java.lang.Throwable -> L96
            if (r11 != r6) goto L91
        L90:
            return r6
        L91:
            r8 = r9
        L92:
            kotlin.io.CloseableKt.closeFinally(r8, r5)
            return r11
        L96:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        L9a:
            throw r9     // Catch: java.lang.Throwable -> L9b
        L9b:
            r10 = move-exception
            kotlin.io.CloseableKt.closeFinally(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClient.m889executeRequestimpl(okhttp3.Call$Factory, coil3.network.NetworkRequest, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m890hashCodeimpl(Call.Factory factory) {
        return factory.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m891toStringimpl(Call.Factory factory) {
        return "CallFactoryNetworkClient(callFactory=" + factory + ")";
    }

    public boolean equals(Object obj) {
        return m887equalsimpl(this.callFactory, obj);
    }

    @Override // coil3.network.NetworkClient
    public <T> Object executeRequest(NetworkRequest networkRequest, Function2 function2, Continuation continuation) {
        return m889executeRequestimpl(this.callFactory, networkRequest, function2, continuation);
    }

    public int hashCode() {
        return m890hashCodeimpl(this.callFactory);
    }

    public String toString() {
        return m891toStringimpl(this.callFactory);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Call.Factory m892unboximpl() {
        return this.callFactory;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Call.Factory m886constructorimpl(Call.Factory factory) {
        return factory;
    }
}
