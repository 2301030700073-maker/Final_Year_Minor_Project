package okhttp3.internal.http;

import com.jcraft.jzlib.Adler32;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HttpHeaders {
    static {
        ByteString byteString = ByteString.EMPTY;
        Adler32.encodeUtf8("\"\\");
        Adler32.encodeUtf8("\t ,=");
    }

    public static final boolean promisesBody(Response response) {
        if (Intrinsics.areEqual(response.request.method, "HEAD")) {
            return false;
        }
        int i = response.code;
        if (((i < 100 || i >= 200) && i != 204 && i != 304) || _UtilJvmKt.headersContentLength(response) != -1) {
            return true;
        }
        String str = response.headers.get("Transfer-Encoding");
        if (str == null) {
            str = null;
        }
        return "chunked".equalsIgnoreCase(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0206, code lost:
    
        if (okhttp3.internal._HostnamesCommonKt.VERIFY_AS_IP_ADDRESS.matches(r0) == false) goto L112;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void receiveHeaders(okhttp3.HttpUrl.Companion r36, okhttp3.HttpUrl r37, okhttp3.Headers r38) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.receiveHeaders(okhttp3.HttpUrl$Companion, okhttp3.HttpUrl, okhttp3.Headers):void");
    }
}
