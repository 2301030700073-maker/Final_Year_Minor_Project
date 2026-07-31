package com.fsck.k9.mail.internet;

import androidx.camera.core.impl.Config;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.BitSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EncoderUtil {
    public static final BitSet Q_RESTRICTED_CHARS;

    static {
        BitSet bitSet = new BitSet(128);
        for (char c = '!'; c < 127; c = (char) (c + 1)) {
            if ("=_?\"#$%&'(),.:;<>@[\\]^`{|}~".indexOf(c) == -1) {
                bitSet.set(c);
            }
        }
        Q_RESTRICTED_CHARS = bitSet;
    }

    public static byte[] encode(String str, Charset charset) {
        ByteBuffer encode = charset.encode(str);
        byte[] bArr = new byte[encode.limit()];
        encode.get(bArr);
        return bArr;
    }

    public static String encodeB(String str, String str2, Charset charset, byte[] bArr) {
        if (str.length() + (((bArr.length + 2) / 3) * 4) + 2 <= 75) {
            return Config.CC.m(str, org.apache.james.mime4j.codec.EncoderUtil.encodeB(bArr), "?=");
        }
        int length = str2.length() / 2;
        if (Character.isHighSurrogate(str2.charAt(length - 1))) {
            length--;
        }
        String substring = str2.substring(0, length);
        String encodeB = encodeB(str, substring, charset, encode(substring, charset));
        String substring2 = str2.substring(length);
        return Config.CC.m(encodeB, " ", encodeB(str, substring2, charset, encode(substring2, charset)));
    }

    public static String encodeQ(String str, String str2, Charset charset, byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            i = (i2 == 32 || Q_RESTRICTED_CHARS.get(i2)) ? i + 1 : i + 3;
        }
        if (str.length() + i + 2 <= 75) {
            return Config.CC.m(str, org.apache.james.mime4j.codec.EncoderUtil.encodeQ(bArr), "?=");
        }
        int length = str2.length() / 2;
        if (Character.isHighSurrogate(str2.charAt(length - 1))) {
            length--;
        }
        String substring = str2.substring(0, length);
        String encodeQ = encodeQ(str, substring, charset, encode(substring, charset));
        String substring2 = str2.substring(length);
        return Config.CC.m(encodeQ, " ", encodeQ(str, substring2, charset, encode(substring2, charset)));
    }
}
