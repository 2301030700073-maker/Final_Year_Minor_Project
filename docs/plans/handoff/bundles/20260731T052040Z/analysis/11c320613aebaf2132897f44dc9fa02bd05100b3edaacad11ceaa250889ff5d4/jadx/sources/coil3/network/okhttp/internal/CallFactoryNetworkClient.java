package coil3.network.okhttp.internal;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CallFactoryNetworkClient {
    public final OkHttpClient callFactory;

    public /* synthetic */ CallFactoryNetworkClient(OkHttpClient okHttpClient) {
        this.callFactory = okHttpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0083, code lost:
    
        if (r12 == r1) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: executeRequest-impl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m478executeRequestimpl(okhttp3.OkHttpClient r9, coil3.network.NetworkRequest r10, kotlin.jvm.functions.Function2 r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClient.m478executeRequestimpl(okhttp3.OkHttpClient, coil3.network.NetworkRequest, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
