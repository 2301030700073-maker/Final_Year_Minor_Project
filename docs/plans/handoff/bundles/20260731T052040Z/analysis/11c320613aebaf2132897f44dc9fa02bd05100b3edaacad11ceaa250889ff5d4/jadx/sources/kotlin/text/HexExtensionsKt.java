package kotlin.text;

import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;
import java.util.Arrays;
import kotlin.text.HexFormat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class HexExtensionsKt {
    public static final int[] BYTE_TO_LOWER_CASE_HEX_DIGITS;
    public static final int[] HEX_DIGITS_TO_DECIMAL;
    public static final long[] HEX_DIGITS_TO_LONG_DECIMAL;

    static {
        int[] iArr = new int[256];
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = "0123456789abcdef".charAt(i2 & 15) | ("0123456789abcdef".charAt(i2 >> 4) << '\b');
        }
        BYTE_TO_LOWER_CASE_HEX_DIGITS = iArr;
        int[] iArr2 = new int[256];
        for (int i3 = 0; i3 < 256; i3++) {
            iArr2[i3] = "0123456789ABCDEF".charAt(i3 & 15) | ("0123456789ABCDEF".charAt(i3 >> 4) << '\b');
        }
        int[] iArr3 = new int[256];
        for (int i4 = 0; i4 < 256; i4++) {
            iArr3[i4] = -1;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i5)] = i6;
            i5++;
            i6++;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i7)] = i8;
            i7++;
            i8++;
        }
        HEX_DIGITS_TO_DECIMAL = iArr3;
        long[] jArr = new long[256];
        for (int i9 = 0; i9 < 256; i9++) {
            jArr[i9] = -1;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i10)] = i11;
            i10++;
            i11++;
        }
        int i12 = 0;
        while (i < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i)] = i12;
            i++;
            i12++;
        }
        HEX_DIGITS_TO_LONG_DECIMAL = jArr;
    }

    public static byte[] hexToByteArray$default() {
        byte[] bArr;
        HexFormat hexFormat = HexFormat.Default;
        hexFormat.getClass();
        int i = 0;
        BundleKt.checkBoundsIndexes$kotlin_stdlib(0, 64, 64);
        HexFormat.BytesHexFormat bytesHexFormat = hexFormat.bytes;
        if (bytesHexFormat.noLineAndGroupSeparator) {
            if (bytesHexFormat.shortByteSeparatorNoPrefixAndSuffix) {
                bArr = new byte[32];
                int i2 = 0;
                while (i < 32) {
                    bArr[i] = parseByteAt(i2);
                    i2 += 2;
                    i++;
                }
            } else {
                bArr = new byte[32];
                int i3 = 0;
                while (i < 31) {
                    bArr[i] = parseByteAt(i3);
                    i3 += 2;
                    i++;
                }
                bArr[31] = parseByteAt(i3);
            }
            return bArr;
        }
        boolean z = bytesHexFormat.ignoreCase;
        long wholeElementsPerSet = wholeElementsPerSet(1, 64L, 4294967294L);
        long j = 64 - (4294967295L * wholeElementsPerSet);
        long wholeElementsPerSet2 = wholeElementsPerSet(2, j, 4294967294L);
        long j2 = j - (4294967296L * wholeElementsPerSet2);
        long wholeElementsPerSet3 = wholeElementsPerSet(0, j2, 2L);
        int i4 = (int) ((wholeElementsPerSet2 * 2147483647L) + (wholeElementsPerSet * 2147483647L) + wholeElementsPerSet3 + (j2 - (2 * wholeElementsPerSet3) > 0 ? 1 : 0));
        byte[] bArr2 = new byte[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i5 < 64) {
            if (i7 == Integer.MAX_VALUE) {
                if ("cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i5) == '\r') {
                    int i9 = i5 + 1;
                    i5 = (i9 >= 64 || "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i9) != '\n') ? i9 : i5 + 2;
                } else {
                    if ("cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i5) != '\n') {
                        StringBuilder m179m = Modifier.CC.m179m("Expected a new line at index ", i5, ", but was ");
                        m179m.append("cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i5));
                        throw new NumberFormatException(m179m.toString());
                    }
                    i5++;
                }
                i7 = 0;
                i8 = 0;
            } else if (i8 == Integer.MAX_VALUE) {
                for (int i10 = 0; i10 < 2; i10++) {
                    if (!CharsKt.equals("  ".charAt(i10), "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i5 + i10), z)) {
                        int i11 = 2 + i5;
                        throw new NumberFormatException("Expected group separator \"  \" at index " + i5 + ", but was " + "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".substring(i5, i11 <= 64 ? i11 : 64));
                    }
                }
                i5 += 2;
                i8 = 0;
            }
            i7++;
            i8++;
            if (62 < i5) {
                throw new NumberFormatException("Expected exactly 2 hexadecimal digits at index " + i5 + ", but was \"" + "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".substring(i5, 64) + "\" of length " + (64 - i5));
            }
            bArr2[i6] = parseByteAt(i5);
            i5 += 2;
            i6++;
        }
        return i6 == i4 ? bArr2 : Arrays.copyOf(bArr2, i6);
    }

    public static final byte parseByteAt(int i) {
        int[] iArr;
        int i2;
        int i3;
        char charAt = "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i);
        if ((charAt >>> '\b') != 0 || (i2 = (iArr = HEX_DIGITS_TO_DECIMAL)[charAt]) < 0) {
            throwInvalidDigitAt(i);
            throw null;
        }
        int i4 = i + 1;
        char charAt2 = "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i4);
        if ((charAt2 >>> '\b') == 0 && (i3 = iArr[charAt2]) >= 0) {
            return (byte) ((i2 << 4) | i3);
        }
        throwInvalidDigitAt(i4);
        throw null;
    }

    public static final void throwInvalidDigitAt(int i) {
        StringBuilder m179m = Modifier.CC.m179m("Expected a hexadecimal digit at index ", i, ", but was ");
        m179m.append("cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab".charAt(i));
        throw new NumberFormatException(m179m.toString());
    }

    public static final long wholeElementsPerSet(int i, long j, long j2) {
        if (j <= 0 || j2 <= 0) {
            return 0L;
        }
        long j3 = i;
        return (j + j3) / (j2 + j3);
    }
}
