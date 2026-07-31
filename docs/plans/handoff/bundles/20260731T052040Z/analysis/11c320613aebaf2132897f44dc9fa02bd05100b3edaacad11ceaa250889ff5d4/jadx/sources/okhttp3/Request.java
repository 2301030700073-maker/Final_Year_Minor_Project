package okhttp3;

import androidx.compose.ui.Modifier;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.EmptyTags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Request {
    public final RequestBody body;
    public final Headers headers;
    public CacheControl lazyCacheControl;
    public final String method;
    public final EmptyTags tags;
    public final HttpUrl url;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public RequestBody body;
        public HttpUrl url;
        public EmptyTags tags = EmptyTags.INSTANCE;
        public String method = "GET";
        public Headers.Builder headers = new Headers.Builder(0);

        public final void header(String str, String str2) {
            str2.getClass();
            Headers.Builder builder = this.headers;
            builder.getClass();
            Jsoup.headersCheckName(str);
            Jsoup.headersCheckValue(str2, str);
            builder.removeAll(str);
            Jsoup.commonAddLenient(builder, str, str2);
        }

        public final void method(String str, RequestBody requestBody) {
            str.getClass();
            if (str.length() <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("method.isEmpty() == true");
                return;
            }
            if (requestBody == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("method ", str, " must have a request body."));
                    return;
                }
            } else if (!CharsKt.permitsRequestBody(str)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("method ", str, " must not have a request body."));
                return;
            }
            this.method = str;
            this.body = requestBody;
        }

        public final void url(String str) {
            str.getClass();
            if (StringsKt__StringsJVMKt.startsWith(str, "ws:", true)) {
                str = "http:".concat(str.substring(3));
            } else if (StringsKt__StringsJVMKt.startsWith(str, "wss:", true)) {
                str = "https:".concat(str.substring(4));
            }
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.parse$okhttp(null, str);
            this.url = builder.build();
        }
    }

    public Request(Builder builder) {
        HttpUrl httpUrl = builder.url;
        if (httpUrl == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("url == null");
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
                    Jsoup.throwIndexOverflow();
                    throw null;
                }
                Pair pair = (Pair) obj;
                String str = (String) pair.component1();
                String str2 = (String) pair.component2();
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
