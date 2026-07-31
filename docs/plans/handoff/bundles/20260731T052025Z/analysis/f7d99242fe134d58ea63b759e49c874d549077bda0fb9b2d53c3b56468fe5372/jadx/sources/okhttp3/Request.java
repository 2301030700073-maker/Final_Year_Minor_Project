package okhttp3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import okhttp3.Headers;
import okhttp3.internal.EmptyTags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Request {
    public final RequestBody$Companion$toRequestBody$1 body;
    public final Headers headers;
    public CacheControl lazyCacheControl;
    public final String method;
    public final EmptyTags tags;
    public final HttpUrl url;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public RequestBody$Companion$toRequestBody$1 body;
        public HttpUrl url;
        public EmptyTags tags = EmptyTags.INSTANCE;
        public String method = UtilsKt.HTTP_METHOD_GET;
        public Headers.Builder headers = new Headers.Builder(0);

        public final void header(String str, String str2) {
            str2.getClass();
            Headers.Builder builder = this.headers;
            builder.getClass();
            CharsKt__CharKt.headersCheckName(str);
            CharsKt__CharKt.headersCheckValue(str2, str);
            builder.removeAll(str);
            CharsKt__CharKt.commonAddLenient(builder, str, str2);
        }

        public final void method(String str, RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1) {
            str.getClass();
            if (str.length() <= 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("method.isEmpty() == true");
                return;
            }
            if (requestBody$Companion$toRequestBody$1 == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("method ", str, " must have a request body."));
                    return;
                }
            } else if (!Jsoup.permitsRequestBody(str)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("method ", str, " must not have a request body."));
                return;
            }
            this.method = str;
            this.body = requestBody$Companion$toRequestBody$1;
        }
    }

    public Request(Builder builder) {
        HttpUrl httpUrl = builder.url;
        if (httpUrl == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("url == null");
            throw null;
        }
        this.url = httpUrl;
        this.method = builder.method;
        this.headers = builder.headers.build();
        this.body = builder.body;
        this.tags = builder.tags;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.method = this.method;
        builder.body = this.body;
        builder.tags = this.tags;
        builder.headers = this.headers.newBuilder();
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        Headers headers = this.headers;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Object obj : headers) {
                int i2 = i + 1;
                if (i < 0) {
                    IntOffsetKt.throwIndexOverflow();
                    throw null;
                }
                Pair pair = (Pair) obj;
                String str = (String) pair.first;
                String str2 = (String) pair.second;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (_UtilCommonKt.isSensitiveHeader(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
            sb.append(']');
        }
        EmptyTags emptyTags = EmptyTags.INSTANCE;
        EmptyTags emptyTags2 = this.tags;
        if (!Intrinsics.areEqual(emptyTags2, emptyTags)) {
            sb.append(", tags=");
            sb.append(emptyTags2);
        }
        sb.append('}');
        return sb.toString();
    }
}
