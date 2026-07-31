package org.apache.james.mime4j.codec;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Collections;
import java.util.Map;
import org.apache.james.mime4j.Charsets;
import org.apache.james.mime4j.codec.DecodeMonitor;
import org.apache.james.mime4j.io.TextInputStream;
import org.apache.james.mime4j.util.BufferRecycler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DecoderUtil {
    public static final ThreadLocal _recyclerRef = new ThreadLocal();

    public static void appendStringBuffer(ByteArrayOutputStream byteArrayOutputStream, StringBuilder sb, String str) {
        Charset charset;
        Map map = Collections.EMPTY_MAP;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Charset charset2 = null;
            try {
                charset = Charset.forName(str);
            } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
                charset = null;
            }
            if (charset != null) {
                Charset charset3 = (Charset) map.get(charset);
                charset2 = charset3 != null ? charset3 : charset;
            }
            sb.append(new String(byteArray, charset2));
            byteArrayOutputStream.reset();
        }
    }

    public static byte[] decodeByteAryB(String str) {
        try {
            Base64InputStream base64InputStream = new Base64InputStream(new TextInputStream(str, Charsets.US_ASCII), DecodeMonitor.SILENT, 0);
            BufferRecycler bufferRecycler = getBufferRecycler();
            int length = str.length();
            if (length < 0) {
                throw new IllegalArgumentException("Buffer capacity may not be negative");
            }
            byte[] allocByteBuffer = bufferRecycler.allocByteBuffer(0, length);
            int i = 0;
            while (true) {
                try {
                    int read = base64InputStream.read();
                    if (read == -1) {
                        break;
                    }
                    int i2 = i + 1;
                    if (i2 > allocByteBuffer.length) {
                        byte[] allocByteBuffer2 = bufferRecycler.allocByteBuffer(0, Math.max(allocByteBuffer.length << 1, i2));
                        System.arraycopy(allocByteBuffer, 0, allocByteBuffer2, 0, i);
                        bufferRecycler.releaseByteBuffer(0, allocByteBuffer);
                        allocByteBuffer = allocByteBuffer2;
                    }
                    allocByteBuffer[i] = (byte) read;
                    i = i2;
                } finally {
                    base64InputStream.close();
                    bufferRecycler.releaseByteBuffer(0, allocByteBuffer);
                }
            }
            byte[] bArr = new byte[i];
            if (i > 0) {
                System.arraycopy(allocByteBuffer, 0, bArr, 0, i);
            }
            return bArr;
        } catch (IOException e) {
            throw new Error(e);
        }
    }

    public static byte[] decodeByteAryQ(String str) {
        DecodeMonitor decodeMonitor = DecodeMonitor.SILENT;
        StringBuilder sb = new StringBuilder(128);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '_') {
                sb.append("=20");
            } else {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        try {
            QuotedPrintableInputStream quotedPrintableInputStream = new QuotedPrintableInputStream(new TextInputStream(sb2, Charsets.US_ASCII), decodeMonitor, 0);
            BufferRecycler bufferRecycler = getBufferRecycler();
            int length = sb2.length();
            if (length < 0) {
                throw new IllegalArgumentException("Buffer capacity may not be negative");
            }
            byte[] allocByteBuffer = bufferRecycler.allocByteBuffer(0, length);
            int i2 = 0;
            while (true) {
                try {
                    int read = quotedPrintableInputStream.read();
                    if (read == -1) {
                        break;
                    }
                    int i3 = i2 + 1;
                    if (i3 > allocByteBuffer.length) {
                        byte[] allocByteBuffer2 = bufferRecycler.allocByteBuffer(0, Math.max(allocByteBuffer.length << 1, i3));
                        System.arraycopy(allocByteBuffer, 0, allocByteBuffer2, 0, i2);
                        bufferRecycler.releaseByteBuffer(0, allocByteBuffer);
                        allocByteBuffer = allocByteBuffer2;
                    }
                    allocByteBuffer[i2] = (byte) read;
                    i2 = i3;
                } finally {
                    quotedPrintableInputStream.close();
                    bufferRecycler.releaseByteBuffer(0, allocByteBuffer);
                }
            }
            byte[] bArr = new byte[i2];
            if (i2 > 0) {
                System.arraycopy(allocByteBuffer, 0, bArr, 0, i2);
            }
            return bArr;
        } catch (IOException e) {
            throw new Error(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String decodeEncodedWords(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.codec.DecoderUtil.decodeEncodedWords(java.lang.String):java.lang.String");
    }

    public static BufferRecycler getBufferRecycler() {
        ThreadLocal threadLocal = _recyclerRef;
        SoftReference softReference = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        threadLocal.set(new SoftReference(bufferRecycler2));
        return bufferRecycler2;
    }

    public static void monitor(String str, String str2, String str3, String... strArr) {
        boolean z = DecodeMonitor.SILENT instanceof DecodeMonitor.AnonymousClass1;
        if (z) {
            String m = CameraDevices$CC.m(Config.CC.m("=?", str, "?", str2, "?"), str3, "?=");
            StringBuilder sb = new StringBuilder();
            for (String str4 : strArr) {
                sb.append(str4);
            }
            sb.append(" (");
            sb.append(m);
            sb.append(")");
            if (z) {
                throw new IllegalArgumentException(sb.toString());
            }
        }
    }
}
