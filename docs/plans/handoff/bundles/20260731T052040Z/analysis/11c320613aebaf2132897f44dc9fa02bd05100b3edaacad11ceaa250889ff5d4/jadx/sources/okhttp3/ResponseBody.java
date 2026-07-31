package okhttp3;

import java.io.Closeable;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final ResponseBody$Companion$asResponseBody$1 EMPTY;

    /* JADX WARN: Type inference failed for: r0v2, types: [okhttp3.ResponseBody$Companion$asResponseBody$1] */
    static {
        ByteString byteString = ByteString.EMPTY;
        byteString.getClass();
        final Buffer buffer = new Buffer();
        buffer.m713write(byteString);
        final long size$okio = byteString.getSize$okio();
        EMPTY = new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
            @Override // okhttp3.ResponseBody
            public final long contentLength() {
                return size$okio;
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

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        if (r7 == null) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String string() {
        /*
            r7 = this;
            okio.BufferedSource r0 = r7.source()
            r1 = 0
            okhttp3.MediaType r7 = r7.contentType()     // Catch: java.lang.Throwable -> L4c
            if (r7 == 0) goto L39
            kotlin.text.Regex r2 = okhttp3.MediaType.TYPE_SUBTYPE     // Catch: java.lang.Throwable -> L4c
            java.lang.String r2 = "charset"
            java.lang.String[] r7 = r7.parameterNamesAndValues     // Catch: java.lang.Throwable -> L4c
            int r3 = r7.length     // Catch: java.lang.Throwable -> L4c
            int r3 = r3 + (-1)
            r4 = 2
            r5 = 0
            int r3 = okio.Options.Companion.getProgressionLastElement(r5, r3, r4)     // Catch: java.lang.Throwable -> L4c
            if (r3 < 0) goto L2e
        L1c:
            r4 = r7[r5]     // Catch: java.lang.Throwable -> L4c
            boolean r4 = kotlin.text.StringsKt__StringsJVMKt.equals(r4, r2)     // Catch: java.lang.Throwable -> L4c
            if (r4 == 0) goto L29
            int r5 = r5 + 1
            r7 = r7[r5]     // Catch: java.lang.Throwable -> L4c
            goto L2f
        L29:
            if (r5 == r3) goto L2e
            int r5 = r5 + 2
            goto L1c
        L2e:
            r7 = r1
        L2f:
            if (r7 != 0) goto L33
        L31:
            r7 = r1
            goto L37
        L33:
            java.nio.charset.Charset r7 = java.nio.charset.Charset.forName(r7)     // Catch: java.lang.IllegalArgumentException -> L31 java.lang.Throwable -> L4c
        L37:
            if (r7 != 0) goto L3b
        L39:
            java.nio.charset.Charset r7 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Throwable -> L4c
        L3b:
            java.nio.charset.Charset r7 = okhttp3.internal._UtilJvmKt.readBomAsCharset(r0, r7)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r7 = r0.readString(r7)     // Catch: java.lang.Throwable -> L4c
            r0.close()     // Catch: java.lang.Throwable -> L47
            goto L48
        L47:
            r1 = move-exception
        L48:
            r6 = r1
            r1 = r7
            r7 = r6
            goto L57
        L4c:
            r7 = move-exception
            if (r0 == 0) goto L57
            r0.close()     // Catch: java.lang.Throwable -> L53
            goto L57
        L53:
            r0 = move-exception
            kotlin.ResultKt.addSuppressed(r7, r0)
        L57:
            if (r7 != 0) goto L5a
            return r1
        L5a:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.string():java.lang.String");
    }
}
