package org.apache.james.mime4j.codec;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.BitSet;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EncoderUtil {
    public static final BitSet ATEXT_CHARS;
    public static final byte[] BASE64_TABLE = Base64OutputStream.BASE64_TABLE;
    public static final Pattern QUOTE;
    public static final BitSet Q_RESTRICTED_CHARS;

    static {
        initChars("=_?");
        Q_RESTRICTED_CHARS = initChars("=_?\"#$%&'(),.:;<>@[\\]^`{|}~");
        initChars("()<>@,;:\\\"/[]?=");
        ATEXT_CHARS = initChars("()<>@.,;:\\\"[]");
        QUOTE = Pattern.compile("[\\\\\"]");
    }

    public static byte[] encode(String str, Charset charset) {
        ByteBuffer encode = charset.encode(str);
        byte[] bArr = new byte[encode.limit()];
        encode.get(bArr);
        return bArr;
    }

    public static String encodeB(byte[] bArr) {
        int i;
        byte[] bArr2;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        int i2 = 0;
        while (true) {
            i = length - 2;
            bArr2 = BASE64_TABLE;
            if (i2 >= i) {
                break;
            }
            int i3 = ((bArr[i2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8) | (bArr[i2 + 2] & 255);
            sb.append((char) bArr2[(i3 >> 18) & 63]);
            sb.append((char) bArr2[(i3 >> 12) & 63]);
            sb.append((char) bArr2[(i3 >> 6) & 63]);
            sb.append((char) bArr2[i3 & 63]);
            i2 += 3;
        }
        if (i2 == i) {
            int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
            sb.append((char) bArr2[(i4 >> 18) & 63]);
            sb.append((char) bArr2[(i4 >> 12) & 63]);
            sb.append((char) bArr2[(i4 >> 6) & 63]);
            sb.append('=');
        } else if (i2 == length - 1) {
            int i5 = (bArr[i2] & 255) << 16;
            sb.append((char) bArr2[(i5 >> 18) & 63]);
            sb.append((char) bArr2[(i5 >> 12) & 63]);
            sb.append("==");
        }
        return sb.toString();
    }

    public static String encodeQ(String str, String str2, Charset charset, byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            i = (i2 == 32 || Q_RESTRICTED_CHARS.get(i2)) ? i + 1 : i + 3;
        }
        if (str.length() + i + 2 <= 75) {
            StringBuilder m = Modifier.CC.m(str);
            m.append(encodeQ(bArr));
            m.append("?=");
            return m.toString();
        }
        int offsetByCodePoints = str2.offsetByCodePoints(str2.length() / 2, -1);
        String substring = str2.substring(0, offsetByCodePoints);
        String encodeQ = encodeQ(str, substring, charset, encode(substring, charset));
        String substring2 = str2.substring(offsetByCodePoints);
        return Config.CC.m(encodeQ, " ", encodeQ(str, substring2, charset, encode(substring2, charset)));
    }

    public static BitSet initChars(String str) {
        BitSet bitSet = new BitSet(128);
        for (char c = '!'; c < 127; c = (char) (c + 1)) {
            if (str.indexOf(c) == -1) {
                bitSet.set(c);
            }
        }
        return bitSet;
    }

    public static String encodeQ(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = b & 255;
            if (i == 32) {
                sb.append('_');
            } else if (!Q_RESTRICTED_CHARS.get(i)) {
                sb.append('=');
                int i2 = i >>> 4;
                sb.append((char) (i2 < 10 ? i2 + 48 : i2 + 55));
                int i3 = b & 15;
                sb.append((char) (i3 < 10 ? i3 + 48 : i3 + 55));
            } else {
                sb.append((char) i);
            }
        }
        return sb.toString();
    }

    public static String encodeB(String str, String str2, Charset charset, byte[] bArr) {
        if (str.length() + (((bArr.length + 2) / 3) * 4) + 2 <= 75) {
            StringBuilder m = Modifier.CC.m(str);
            m.append(encodeB(bArr));
            m.append("?=");
            return m.toString();
        }
        int offsetByCodePoints = str2.offsetByCodePoints(str2.length() / 2, -1);
        String substring = str2.substring(0, offsetByCodePoints);
        String encodeB = encodeB(str, substring, charset, encode(substring, charset));
        String substring2 = str2.substring(offsetByCodePoints);
        return Config.CC.m(encodeB, " ", encodeB(str, substring2, charset, encode(substring2, charset)));
    }
}
