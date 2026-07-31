package okhttp3;

import androidx.compose.animation.core.Animation;
import java.io.Closeable;
import java.io.IOException;
import kotlin.ExceptionsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final ResponseBody$Companion$asResponseBody$1 EMPTY;

    static {
        ByteString byteString = ByteString.EMPTY;
        byteString.getClass();
        Buffer buffer = new Buffer();
        buffer.m876write(byteString);
        EMPTY = new ResponseBody$Companion$asResponseBody$1(null, byteString.data.length, buffer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final byte[] bytes() {
        long contentLength = contentLength();
        byte[] th = null;
        if (contentLength > 2147483647L) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Animation.CC.m("Cannot buffer entire body for content length: ", contentLength));
            return null;
        }
        BufferedSource source = source();
        try {
            byte[] readByteArray = source.readByteArray();
            try {
                source.close();
            } catch (Throwable th2) {
                th = th2;
            }
            byte[] bArr = th;
            th = readByteArray;
            th = bArr;
        } catch (Throwable th3) {
            th = th3;
            if (source != null) {
                try {
                    source.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th, th4);
                }
            }
        }
        if (th != 0) {
            throw th;
        }
        int length = th.length;
        if (contentLength == -1 || contentLength == length) {
            return th;
        }
        throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        _UtilCommonKt.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract BufferedSource source();

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r4 == null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String string() {
        /*
            r4 = this;
            okio.BufferedSource r0 = r4.source()
            r1 = 0
            okhttp3.MediaType r4 = r4.contentType()     // Catch: java.lang.Throwable -> L26
            if (r4 == 0) goto L13
            kotlin.text.Regex r2 = okhttp3.MediaType.TYPE_SUBTYPE     // Catch: java.lang.Throwable -> L26
            java.nio.charset.Charset r4 = r4.charset(r1)     // Catch: java.lang.Throwable -> L26
            if (r4 != 0) goto L15
        L13:
            java.nio.charset.Charset r4 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Throwable -> L26
        L15:
            java.nio.charset.Charset r4 = okhttp3.internal._UtilJvmKt.readBomAsCharset(r0, r4)     // Catch: java.lang.Throwable -> L26
            java.lang.String r4 = r0.readString(r4)     // Catch: java.lang.Throwable -> L26
            r0.close()     // Catch: java.lang.Throwable -> L21
            goto L22
        L21:
            r1 = move-exception
        L22:
            r3 = r1
            r1 = r4
            r4 = r3
            goto L31
        L26:
            r4 = move-exception
            if (r0 == 0) goto L31
            r0.close()     // Catch: java.lang.Throwable -> L2d
            goto L31
        L2d:
            r0 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r4, r0)
        L31:
            if (r4 != 0) goto L34
            return r1
        L34:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.string():java.lang.String");
    }
}
