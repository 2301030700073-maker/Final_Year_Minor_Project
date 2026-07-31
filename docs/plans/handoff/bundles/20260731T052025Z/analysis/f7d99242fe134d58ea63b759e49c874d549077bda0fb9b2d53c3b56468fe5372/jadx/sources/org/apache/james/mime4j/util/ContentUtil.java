package org.apache.james.mime4j.util;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ContentUtil {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new ThreadLocal();
        new ThreadLocal();
    }

    public static String decode(ByteSequence byteSequence, int i, int i2) {
        Charset charset = StandardCharsets.UTF_8;
        if (byteSequence == null) {
            return null;
        }
        if (charset == null) {
            charset = Charset.defaultCharset();
        }
        return byteSequence instanceof ByteArrayBuffer ? charset.decode(ByteBuffer.wrap(((ByteArrayBuffer) byteSequence).buffer, i, i2)).toString() : charset.decode(ByteBuffer.wrap(byteSequence.toByteArray(), i, i2)).toString();
    }

    public static ByteArrayBuffer encode(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if ((str.charAt(i) & 65408) != 0) {
                Charset charset = StandardCharsets.UTF_8;
                if (charset == null) {
                    charset = Charset.defaultCharset();
                }
                ByteBuffer encode = charset.encode(CharBuffer.wrap(str));
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(encode.remaining());
                byteArrayBuffer.append(encode.array(), encode.position(), encode.remaining());
                return byteArrayBuffer;
            }
        }
        ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            byteArrayBuffer2.append((byte) str.charAt(i2));
        }
        return byteArrayBuffer2;
    }

    public static String decode(ByteSequence byteSequence) {
        if (byteSequence == null) {
            return null;
        }
        int length = byteSequence.length();
        if (byteSequence instanceof ByteArrayBuffer) {
            return new String(((ByteArrayBuffer) byteSequence).buffer, 0, length, StandardCharsets.ISO_8859_1);
        }
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = (char) (byteSequence.byteAt(i) & 255);
        }
        return new String(cArr);
    }
}
