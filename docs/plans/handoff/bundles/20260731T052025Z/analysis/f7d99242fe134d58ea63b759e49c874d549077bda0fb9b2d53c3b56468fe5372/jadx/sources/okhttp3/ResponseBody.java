package okhttp3;

import java.io.Closeable;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final ResponseBody$Companion$asResponseBody$1 EMPTY;

    /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.ResponseBody$Companion$asResponseBody$1] */
    static {
        ByteString byteString = ByteString.EMPTY;
        byteString.getClass();
        final Buffer buffer = new Buffer();
        buffer.m1052write(byteString);
        final long length = byteString.data.length;
        EMPTY = new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
            @Override // okhttp3.ResponseBody
            public final long contentLength() {
                return length;
            }

            @Override // okhttp3.ResponseBody
            public final MediaType contentType() {
                return null;
            }

            @Override // okhttp3.ResponseBody
            public final BufferedSource source() {
                return buffer;
            }
        };
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        _UtilCommonKt.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract BufferedSource source();
}
