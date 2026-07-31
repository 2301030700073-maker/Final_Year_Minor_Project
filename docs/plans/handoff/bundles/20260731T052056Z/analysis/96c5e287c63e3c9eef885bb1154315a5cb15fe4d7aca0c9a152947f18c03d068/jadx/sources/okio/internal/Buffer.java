package okio.internal;

import androidx.compose.animation.core.Animation;
import kotlin.text.Charsets;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Segment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: okio.internal.-Buffer, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Buffer {
    public static final long[] DigitCountToLargestValue;
    public static final byte[] HEX_DIGIT_BYTES;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(Charsets.UTF_8);
        bytes.getClass();
        HEX_DIGIT_BYTES = bytes;
        DigitCountToLargestValue = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final long commonIndexOf(okio.Buffer buffer, ByteString byteString, long j, long j2, int i) {
        Segment segment;
        long j3 = j;
        long j4 = j2;
        byteString.getClass();
        long j5 = i;
        HttpUrl.Companion.checkOffsetAndCount(byteString.getSize$okio(), 0L, j5);
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("byteCount == 0");
            return 0L;
        }
        if (j3 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("fromIndex < 0: ", j3));
            return 0L;
        }
        if (j3 > j4) {
            throw new IllegalArgumentException(("fromIndex > toIndex: " + j3 + " > " + j4).toString());
        }
        long j6 = buffer.size;
        if (j4 > j6) {
            j4 = j6;
        }
        if (j3 == j4 || (segment = buffer.head) == null) {
            return -1L;
        }
        long j7 = 0;
        if (j6 - j3 < j3) {
            while (j6 > j3) {
                segment = segment.prev;
                segment.getClass();
                j6 -= segment.limit - segment.pos;
            }
            byte[] internalArray$okio = byteString.internalArray$okio();
            byte b = internalArray$okio[0];
            long min = Math.min(j4, (buffer.size - j5) + 1);
            while (j6 < min) {
                byte[] bArr = segment.data;
                int min2 = (int) Math.min(segment.limit, (segment.pos + min) - j6);
                for (int i2 = (int) ((segment.pos + j3) - j6); i2 < min2; i2++) {
                    if (bArr[i2] == b && rangeEquals(segment, i2 + 1, internalArray$okio, 1, i)) {
                        return (i2 - segment.pos) + j6;
                    }
                }
                j6 += segment.limit - segment.pos;
                segment = segment.next;
                segment.getClass();
                j3 = j6;
            }
            return -1L;
        }
        while (true) {
            long j8 = j7 + (segment.limit - segment.pos);
            if (j8 > j3) {
                break;
            }
            segment = segment.next;
            segment.getClass();
            j7 = j8;
        }
        byte[] internalArray$okio2 = byteString.internalArray$okio();
        byte b2 = internalArray$okio2[0];
        long min3 = Math.min(j4, (buffer.size - j5) + 1);
        while (j7 < min3) {
            byte[] bArr2 = segment.data;
            int min4 = (int) Math.min(segment.limit, (segment.pos + min3) - j7);
            for (int i3 = (int) ((segment.pos + j3) - j7); i3 < min4; i3++) {
                if (bArr2[i3] == b2 && rangeEquals(segment, i3 + 1, internalArray$okio2, 1, i)) {
                    return (i3 - segment.pos) + j7;
                }
            }
            j7 += segment.limit - segment.pos;
            segment = segment.next;
            segment.getClass();
            j3 = j7;
        }
        return -1L;
    }

    public static final boolean rangeEquals(Segment segment, int i, byte[] bArr, int i2, int i3) {
        int i4 = segment.limit;
        byte[] bArr2 = segment.data;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.next;
                segment.getClass();
                byte[] bArr3 = segment.data;
                bArr2 = bArr3;
                i = segment.pos;
                i4 = segment.limit;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String readUtf8Line(okio.Buffer buffer, long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.getByte(j2) == 13) {
                String readString = buffer.readString(j2, Charsets.UTF_8);
                buffer.skip(2L);
                return readString;
            }
        }
        String readString2 = buffer.readString(j, Charsets.UTF_8);
        buffer.skip(1L);
        return readString2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005a, code lost:
    
        if (r18 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005c, code lost:
    
        return -2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int selectPrefix(okio.Buffer r16, okio.Options r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.selectPrefix(okio.Buffer, okio.Options, boolean):int");
    }
}
