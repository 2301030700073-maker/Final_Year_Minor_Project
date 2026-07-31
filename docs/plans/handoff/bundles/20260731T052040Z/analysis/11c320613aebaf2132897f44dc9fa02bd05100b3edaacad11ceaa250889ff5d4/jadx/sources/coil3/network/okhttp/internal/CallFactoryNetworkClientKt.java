package coil3.network.okhttp.internal;

import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import coil3.network.SourceResponseBody;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.collections.MapsKt__MapsKt;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CallFactoryNetworkClientKt {
    public static final NetworkResponse access$toNetworkResponse(Response response) {
        BufferedSource source;
        int i = response.code;
        long j = response.sentRequestAtMillis;
        long j2 = response.receivedResponseAtMillis;
        Headers headers = response.headers;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = headers.iterator();
        while (true) {
            UIntArray.Iterator iterator = (UIntArray.Iterator) it;
            if (!iterator.hasNext()) {
                break;
            }
            Pair pair = (Pair) iterator.next();
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object obj = linkedHashMap.get(lowerCase);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(lowerCase, obj);
            }
            ((List) obj).add(str2);
        }
        NetworkHeaders networkHeaders = new NetworkHeaders(MapsKt__MapsKt.toMap(linkedHashMap));
        ResponseBody responseBody = response.body;
        return new NetworkResponse(i, j, j2, networkHeaders, (responseBody == null || (source = responseBody.source()) == null) ? null : new SourceResponseBody(source), response);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okhttp3.Request access$toRequest(coil3.network.NetworkRequest r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1
            if (r0 == 0) goto L13
            r0 = r5
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
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 0
            if (r1 == 0) goto L47
            r4 = 1
            if (r1 != r4) goto L41
            java.lang.Object r4 = r0.L$3
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r1 = r0.L$2
            okhttp3.Request$Builder r1 = (okhttp3.Request.Builder) r1
            java.lang.Object r3 = r0.L$1
            okhttp3.Request$Builder r3 = (okhttp3.Request.Builder) r3
            java.lang.Object r0 = r0.L$0
            coil3.network.NetworkRequest r0 = (coil3.network.NetworkRequest) r0
            kotlin.ResultKt.throwOnFailure(r5)
            okio.ByteString r5 = (okio.ByteString) r5
            if (r5 == 0) goto L59
            int r2 = okhttp3.RequestBody.$r8$clinit
            okhttp3.RequestBody$Companion$toRequestBody$1 r2 = new okhttp3.RequestBody$Companion$toRequestBody$1
            r2.<init>()
            goto L59
        L41:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r2
        L47:
            kotlin.ResultKt.throwOnFailure(r5)
            okhttp3.Request$Builder r1 = new okhttp3.Request$Builder
            r1.<init>()
            java.lang.String r5 = r4.url
            r1.url(r5)
            java.lang.String r5 = r4.method
            r0 = r4
            r4 = r5
            r3 = r1
        L59:
            r1.method(r4, r2)
            coil3.network.NetworkHeaders r4 = r0.headers
            java.util.ArrayList r5 = new java.util.ArrayList
            r0 = 20
            r5.<init>(r0)
            java.util.Map r4 = r4.data
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L6f:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto Laf
            java.lang.Object r0 = r4.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r0 = r0.iterator()
        L8b:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L6f
            java.lang.Object r2 = r0.next()
            java.lang.String r2 = (java.lang.String) r2
            r1.getClass()
            r2.getClass()
            org.jsoup.Jsoup.headersCheckName(r1)
            r5.add(r1)
            java.lang.CharSequence r2 = kotlin.text.StringsKt.trim(r2)
            java.lang.String r2 = r2.toString()
            r5.add(r2)
            goto L8b
        Laf:
            okhttp3.Headers r4 = new okhttp3.Headers
            r0 = 0
            java.lang.String[] r0 = new java.lang.String[r0]
            java.lang.Object[] r5 = r5.toArray(r0)
            java.lang.String[] r5 = (java.lang.String[]) r5
            r4.<init>(r5)
            r3.getClass()
            okhttp3.Headers$Builder r4 = r4.newBuilder()
            r3.headers = r4
            okhttp3.Request r4 = new okhttp3.Request
            r4.<init>(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.okhttp.internal.CallFactoryNetworkClientKt.access$toRequest(coil3.network.NetworkRequest, kotlin.coroutines.jvm.internal.ContinuationImpl):okhttp3.Request");
    }
}
