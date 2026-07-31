package coil3.network.internal;

import coil3.disk.DiskCache;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import coil3.network.NetworkResponseBody;
import coil3.size.ViewSizeResolver;
import java.util.List;
import java.util.Map;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {
    public static final String CACHE_CONTROL = "Cache-Control";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String HTTP_METHOD_GET = "GET";
    public static final int HTTP_RESPONSE_NOT_MODIFIED = 304;
    public static final int HTTP_RESPONSE_OK = 200;
    public static final String MIME_TYPE_TEXT_PLAIN = "text/plain";

    public static final void abortQuietly(DiskCache.Editor editor) {
        try {
            editor.abort();
        } catch (Exception unused) {
        }
    }

    public static final NetworkHeaders.Builder append(NetworkHeaders.Builder builder, String str) {
        int indexOf$default = StringsKt.indexOf$default(str, ':', 0, 6);
        if (indexOf$default != -1) {
            builder.add(StringsKt.trim(str.substring(0, indexOf$default)).toString(), str.substring(indexOf$default + 1));
            return builder;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Unexpected header: ".concat(str));
        return null;
    }

    public static final void closeQuietly(AutoCloseable autoCloseable) {
        try {
            ViewSizeResolver.CC.m(autoCloseable);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final NetworkHeaders plus(NetworkHeaders networkHeaders, NetworkHeaders networkHeaders2) {
        NetworkHeaders.Builder newBuilder = networkHeaders.newBuilder();
        for (Map.Entry<String, List<String>> entry : networkHeaders2.asMap().entrySet()) {
            newBuilder.set(entry.getKey(), entry.getValue());
        }
        return newBuilder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object readBuffer(coil3.network.NetworkResponseBody r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof coil3.network.internal.UtilsKt$readBuffer$1
            if (r0 == 0) goto L13
            r0 = r5
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = (coil3.network.internal.UtilsKt$readBuffer$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = new coil3.network.internal.UtilsKt$readBuffer$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L36
            if (r1 != r2) goto L30
            java.lang.Object r4 = r0.L$1
            okio.Buffer r4 = (okio.Buffer) r4
            java.lang.Object r0 = r0.L$0
            java.lang.AutoCloseable r0 = (java.lang.AutoCloseable) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2e
            goto L4f
        L2e:
            r4 = move-exception
            goto L56
        L30:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L36:
            kotlin.ResultKt.throwOnFailure(r5)
            okio.Buffer r5 = new okio.Buffer     // Catch: java.lang.Throwable -> L53
            r5.<init>()     // Catch: java.lang.Throwable -> L53
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L53
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L53
            r0.label = r2     // Catch: java.lang.Throwable -> L53
            java.lang.Object r0 = r4.writeTo(r5, r0)     // Catch: java.lang.Throwable -> L53
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L4d
            return r1
        L4d:
            r0 = r4
            r4 = r5
        L4f:
            okhttp3.Cookie.Companion.closeFinally(r0, r3)
            return r4
        L53:
            r5 = move-exception
            r0 = r4
            r4 = r5
        L56:
            throw r4     // Catch: java.lang.Throwable -> L57
        L57:
            r5 = move-exception
            okhttp3.Cookie.Companion.closeFinally(r0, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.network.internal.UtilsKt.readBuffer(coil3.network.NetworkResponseBody, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final NetworkResponseBody requireBody(NetworkResponse networkResponse) {
        NetworkResponseBody body = networkResponse.getBody();
        if (body != null) {
            return body;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("body == null");
        return null;
    }
}
