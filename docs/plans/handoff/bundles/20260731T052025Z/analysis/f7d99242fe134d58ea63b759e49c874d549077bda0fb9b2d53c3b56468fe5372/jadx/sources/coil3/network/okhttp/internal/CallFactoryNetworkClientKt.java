package coil3.network.okhttp.internal;

import coil3.network.NetworkClientKt;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CallFactoryNetworkClientKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object readByteString(coil3.network.NetworkRequestBody r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof coil3.network.okhttp.internal.CallFactoryNetworkClientKt$readByteString$1
            if (r0 == 0) goto L13
            r0 = r5
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$readByteString$1 r0 = (coil3.network.okhttp.internal.CallFactoryNetworkClientKt$readByteString$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$readByteString$1 r0 = new coil3.network.okhttp.internal.CallFactoryNetworkClientKt$readByteString$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.lang.Object r4 = r0.L$0
            okio.Buffer r4 = (okio.Buffer) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L46
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r5)
            okio.Buffer r5 = new okio.Buffer
            r5.<init>()
            r0.L$0 = r5
            r0.label = r2
            java.lang.Object r4 = r4.writeTo(r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r0) goto L45
            return r0
        L45:
            r4 = r5
        L46:
            long r0 = r4.size
            okio.ByteString r4 = r4.readByteString(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClientKt.readByteString(coil3.network.NetworkRequestBody, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Headers toHeaders(NetworkHeaders networkHeaders) {
        ArrayList arrayList = new ArrayList(20);
        for (Map.Entry<String, List<String>> entry : networkHeaders.asMap().entrySet()) {
            String key = entry.getKey();
            for (String str : entry.getValue()) {
                key.getClass();
                str.getClass();
                CharsKt__CharKt.headersCheckName(key);
                arrayList.add(key);
                arrayList.add(StringsKt.trim(str).toString());
            }
        }
        return new Headers((String[]) arrayList.toArray(new String[0]));
    }

    private static final NetworkHeaders toNetworkHeaders(Headers headers) {
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        Iterator it = headers.iterator();
        while (true) {
            UIntArray.Iterator iterator = (UIntArray.Iterator) it;
            if (!iterator.hasNext()) {
                return builder.build();
            }
            Pair pair = (Pair) iterator.next();
            builder.add((String) pair.first, (String) pair.second);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkResponse toNetworkResponse(Response response) {
        BufferedSource source;
        int i = response.code;
        long j = response.sentRequestAtMillis;
        long j2 = response.receivedResponseAtMillis;
        NetworkHeaders networkHeaders = toNetworkHeaders(response.headers);
        ResponseBody responseBody = response.body;
        return new NetworkResponse(i, j, j2, networkHeaders, (responseBody == null || (source = responseBody.source()) == null) ? null : NetworkClientKt.NetworkResponseBody(source), response);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object toRequest(coil3.network.NetworkRequest r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1 r0 = (coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1 r0 = new coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L3c
            if (r1 != r3) goto L36
            java.lang.Object r5 = r0.L$3
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r1 = r0.L$2
            okhttp3.Request$Builder r1 = (okhttp3.Request.Builder) r1
            java.lang.Object r3 = r0.L$1
            okhttp3.Request$Builder r3 = (okhttp3.Request.Builder) r3
            java.lang.Object r0 = r0.L$0
            coil3.network.NetworkRequest r0 = (coil3.network.NetworkRequest) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto La4
        L36:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            okhttp3.Request$Builder r1 = new okhttp3.Request$Builder
            r1.<init>()
            java.lang.String r6 = r5.getUrl()
            r6.getClass()
            java.lang.String r4 = "ws:"
            boolean r4 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r6, r4, r3)
            if (r4 == 0) goto L60
            r4 = 3
            java.lang.String r6 = r6.substring(r4)
            java.lang.String r4 = "http:"
            java.lang.String r6 = r4.concat(r6)
            goto L74
        L60:
            java.lang.String r4 = "wss:"
            boolean r4 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r6, r4, r3)
            if (r4 == 0) goto L74
            r4 = 4
            java.lang.String r6 = r6.substring(r4)
            java.lang.String r4 = "https:"
            java.lang.String r6 = r4.concat(r6)
        L74:
            okhttp3.HttpUrl$Builder r4 = new okhttp3.HttpUrl$Builder
            r4.<init>()
            r4.parse$okhttp(r2, r6)
            okhttp3.HttpUrl r6 = r4.build()
            r1.url = r6
            java.lang.String r6 = r5.getMethod()
            coil3.network.NetworkRequestBody r4 = r5.getBody()
            if (r4 == 0) goto Lb3
            r0.L$0 = r5
            r0.L$1 = r1
            r0.L$2 = r1
            r0.L$3 = r6
            r0.label = r3
            java.lang.Object r0 = readByteString(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r3) goto L9f
            return r3
        L9f:
            r3 = r0
            r0 = r5
            r5 = r6
            r6 = r3
            r3 = r1
        La4:
            okio.ByteString r6 = (okio.ByteString) r6
            if (r6 == 0) goto Lb0
            int r2 = okhttp3.RequestBody$Companion$toRequestBody$1.$r8$clinit
            okhttp3.RequestBody$Companion$toRequestBody$1 r2 = new okhttp3.RequestBody$Companion$toRequestBody$1
            r2.<init>(r6)
            goto Lb6
        Lb0:
            r6 = r5
            r5 = r0
            goto Lb4
        Lb3:
            r3 = r1
        Lb4:
            r0 = r5
            r5 = r6
        Lb6:
            r1.method(r5, r2)
            coil3.network.NetworkHeaders r5 = r0.getHeaders()
            okhttp3.Headers r5 = toHeaders(r5)
            r3.getClass()
            r5.getClass()
            okhttp3.Headers$Builder r5 = r5.newBuilder()
            r3.headers = r5
            okhttp3.Request r5 = new okhttp3.Request
            r5.<init>(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClientKt.toRequest(coil3.network.NetworkRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
