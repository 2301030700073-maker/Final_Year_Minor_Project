package okhttp3.internal.http;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HttpHeaders {
    static {
        ByteString byteString = ByteString.EMPTY;
        ByteString.Companion.encodeUtf8("\"\\");
        ByteString.Companion.encodeUtf8("\t ,=");
    }

    public static final boolean promisesBody(Response response) {
        if (Intrinsics.areEqual(response.request.method, "HEAD")) {
            return false;
        }
        int i = response.code;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && _UtilJvmKt.headersContentLength(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding", null))) ? false : true;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        Pattern pattern = Cookie.YEAR_PATTERN;
        List values = headers.values("Set-Cookie");
        int size = values.size();
        List list = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            Cookie parse = Cookie.Companion.parse(httpUrl, (String) values.get(i));
            if (parse != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(parse);
            }
        }
        if (arrayList != null) {
            list = DesugarCollections.unmodifiableList(arrayList);
            list.getClass();
        }
        if (list == null) {
            list = EmptyList.INSTANCE;
        }
        if (list.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, list);
    }
}
