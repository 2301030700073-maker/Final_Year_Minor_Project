package okio;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    public Segment head;
    public long size;

    public final Object clone() {
        Buffer buffer = new Buffer();
        if (this.size == 0) {
            return buffer;
        }
        Segment segment = this.head;
        segment.getClass();
        Segment sharedCopy = segment.sharedCopy();
        buffer.head = sharedCopy;
        sharedCopy.prev = sharedCopy;
        sharedCopy.next = sharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = sharedCopy.prev;
            segment3.getClass();
            segment2.getClass();
            segment3.push(segment2.sharedCopy());
        }
        buffer.size = this.size;
        return buffer;
    }

    public final long completeSegmentByteCount() {
        long j = this.size;
        if (j == 0) {
            return 0L;
        }
        Segment segment = this.head;
        segment.getClass();
        Segment segment2 = segment.prev;
        segment2.getClass();
        return (segment2.limit >= 8192 || !segment2.owner) ? j : j - (r2 - segment2.pos);
    }

    public final void copyTo(Buffer buffer, long j, long j2) {
        buffer.getClass();
        long j3 = j;
        UStringsKt.checkOffsetAndCount(this.size, j3, j2);
        if (j2 == 0) {
            return;
        }
        buffer.size += j2;
        Segment segment = this.head;
        while (true) {
            segment.getClass();
            long j4 = segment.limit - segment.pos;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            segment = segment.next;
        }
        long j5 = j2;
        while (j5 > 0) {
            segment.getClass();
            Segment sharedCopy = segment.sharedCopy();
            int i = sharedCopy.pos + ((int) j3);
            sharedCopy.pos = i;
            sharedCopy.limit = Math.min(i + ((int) j5), sharedCopy.limit);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy;
                buffer.head = sharedCopy;
            } else {
                Segment segment3 = segment2.prev;
                segment3.getClass();
                segment3.push(sharedCopy);
            }
            j5 -= sharedCopy.limit - sharedCopy.pos;
            segment = segment.next;
            j3 = 0;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        long j = this.size;
        Buffer buffer = (Buffer) obj;
        if (j != buffer.size) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        Segment segment = this.head;
        segment.getClass();
        Segment segment2 = buffer.head;
        segment2.getClass();
        int i = segment.pos;
        int i2 = segment2.pos;
        long j2 = 0;
        while (j2 < this.size) {
            long min = Math.min(segment.limit - i, segment2.limit - i2);
            long j3 = 0;
            while (j3 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (segment.data[i] != segment2.data[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == segment.limit) {
                segment = segment.next;
                segment.getClass();
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                segment2.getClass();
                i2 = segment2.pos;
            }
            j2 += min;
        }
        return true;
    }

    public final boolean exhausted() {
        return this.size == 0;
    }

    public final byte getByte(long j) {
        UStringsKt.checkOffsetAndCount(this.size, j, 1L);
        Segment segment = this.head;
        segment.getClass();
        long j2 = this.size;
        if (j2 - j < j) {
            while (j2 > j) {
                segment = segment.prev;
                segment.getClass();
                j2 -= segment.limit - segment.pos;
            }
            return segment.data[(int) ((segment.pos + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            long j4 = (i - i2) + j3;
            if (j4 > j) {
                return segment.data[(int) ((i2 + j) - j3)];
            }
            segment = segment.next;
            segment.getClass();
            j3 = j4;
        }
    }

    public final int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.limit;
            for (int i3 = segment.pos; i3 < i2; i3++) {
                i = (i * 31) + segment.data[i3];
            }
            segment = segment.next;
            segment.getClass();
        } while (segment != this.head);
        return i;
    }

    public final long indexOf(byte b, long j, long j2) {
        Segment segment;
        long j3 = 0;
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("size=" + this.size + " fromIndex=" + j + " toIndex=" + j2).toString());
        }
        long j4 = this.size;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (segment = this.head) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                segment = segment.prev;
                segment.getClass();
                j4 -= segment.limit - segment.pos;
            }
            while (j4 < j2) {
                byte[] bArr = segment.data;
                int min = (int) Math.min(segment.limit, (segment.pos + j2) - j4);
                for (int i = (int) ((segment.pos + j) - j4); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - segment.pos) + j4;
                    }
                }
                j4 += segment.limit - segment.pos;
                segment = segment.next;
                segment.getClass();
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = (segment.limit - segment.pos) + j3;
            if (j5 > j) {
                break;
            }
            segment = segment.next;
            segment.getClass();
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = segment.data;
            int min2 = (int) Math.min(segment.limit, (segment.pos + j2) - j3);
            for (int i2 = (int) ((segment.pos + j) - j3); i2 < min2; i2++) {
                if (bArr2[i2] == b) {
                    return (i2 - segment.pos) + j3;
                }
            }
            j3 += segment.limit - segment.pos;
            segment = segment.next;
            segment.getClass();
            j = j3;
        }
        return -1L;
    }

    public final long indexOfElement(ByteString byteString) {
        int i;
        int i2;
        byteString.getClass();
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        long j = this.size;
        long j2 = 0;
        if (j < 0) {
            while (j > 0) {
                segment = segment.prev;
                segment.getClass();
                j -= segment.limit - segment.pos;
            }
            if (byteString.getSize$okio() == 2) {
                byte internalGet$okio = byteString.internalGet$okio(0);
                byte internalGet$okio2 = byteString.internalGet$okio(1);
                while (j < this.size) {
                    byte[] bArr = segment.data;
                    i = (int) ((segment.pos + j2) - j);
                    int i3 = segment.limit;
                    while (i < i3) {
                        byte b = bArr[i];
                        if (b != internalGet$okio && b != internalGet$okio2) {
                            i++;
                        }
                        i2 = segment.pos;
                    }
                    j2 = (segment.limit - segment.pos) + j;
                    segment = segment.next;
                    segment.getClass();
                    j = j2;
                }
                return -1L;
            }
            byte[] internalArray$okio = byteString.internalArray$okio();
            while (j < this.size) {
                byte[] bArr2 = segment.data;
                i = (int) ((segment.pos + j2) - j);
                int i4 = segment.limit;
                while (i < i4) {
                    byte b2 = bArr2[i];
                    for (byte b3 : internalArray$okio) {
                        if (b2 == b3) {
                            i2 = segment.pos;
                        }
                    }
                    i++;
                }
                j2 = (segment.limit - segment.pos) + j;
                segment = segment.next;
                segment.getClass();
                j = j2;
            }
            return -1L;
        }
        j = 0;
        while (true) {
            long j3 = (segment.limit - segment.pos) + j;
            if (j3 > 0) {
                break;
            }
            segment = segment.next;
            segment.getClass();
            j = j3;
        }
        if (byteString.getSize$okio() == 2) {
            byte internalGet$okio3 = byteString.internalGet$okio(0);
            byte internalGet$okio4 = byteString.internalGet$okio(1);
            while (j < this.size) {
                byte[] bArr3 = segment.data;
                i = (int) ((segment.pos + j2) - j);
                int i5 = segment.limit;
                while (i < i5) {
                    byte b4 = bArr3[i];
                    if (b4 != internalGet$okio3 && b4 != internalGet$okio4) {
                        i++;
                    }
                    i2 = segment.pos;
                }
                j2 = (segment.limit - segment.pos) + j;
                segment = segment.next;
                segment.getClass();
                j = j2;
            }
            return -1L;
        }
        byte[] internalArray$okio2 = byteString.internalArray$okio();
        while (j < this.size) {
            byte[] bArr4 = segment.data;
            i = (int) ((segment.pos + j2) - j);
            int i6 = segment.limit;
            while (i < i6) {
                byte b5 = bArr4[i];
                for (byte b6 : internalArray$okio2) {
                    if (b5 == b6) {
                        i2 = segment.pos;
                    }
                }
                i++;
            }
            j2 = (segment.limit - segment.pos) + j;
            segment = segment.next;
            segment.getClass();
            j = j2;
        }
        return -1L;
        return (i - i2) + j;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final boolean rangeEquals(ByteString byteString) {
        Segment segment;
        boolean z;
        long j;
        long j2;
        long j3;
        byteString.getClass();
        int size$okio = byteString.getSize$okio();
        if (size$okio >= 0) {
            long j4 = size$okio;
            if (j4 <= this.size && size$okio <= byteString.getSize$okio()) {
                if (size$okio != 0) {
                    byte[] bArr = okio.internal.Buffer.HEX_DIGIT_BYTES;
                    UStringsKt.checkOffsetAndCount(byteString.getSize$okio(), 0L, j4);
                    if (size$okio <= 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("byteCount == 0");
                        return false;
                    }
                    long j5 = this.size;
                    long j6 = 1;
                    long j7 = 1 > j5 ? j5 : 1L;
                    if (0 == j7 || (segment = this.head) == null) {
                        j3 = -1;
                        z = false;
                    } else if (j5 < 0) {
                        while (j5 > 0) {
                            segment = segment.prev;
                            segment.getClass();
                            j5 -= segment.limit - segment.pos;
                            j6 = j6;
                        }
                        long j8 = j6;
                        z = false;
                        byte[] internalArray$okio = byteString.internalArray$okio();
                        byte b = internalArray$okio[0];
                        long min = Math.min(j7, (this.size - j4) + j8);
                        long j9 = 0;
                        loop1: while (j5 < min) {
                            byte[] bArr2 = segment.data;
                            j = j5;
                            int min2 = (int) Math.min(segment.limit, (segment.pos + min) - j5);
                            for (int i = (int) ((segment.pos + j9) - j); i < min2; i++) {
                                if (bArr2[i] == b && okio.internal.Buffer.rangeEquals(segment, i + 1, internalArray$okio, 1, size$okio)) {
                                    j2 = i - segment.pos;
                                    j3 = j2 + j;
                                    break loop1;
                                }
                            }
                            j9 = j + (segment.limit - segment.pos);
                            segment = segment.next;
                            segment.getClass();
                            j5 = j9;
                        }
                        j3 = -1;
                    } else {
                        z = false;
                        long j10 = 0;
                        while (true) {
                            long j11 = (segment.limit - segment.pos) + j10;
                            if (j11 > 0) {
                                break;
                            }
                            segment = segment.next;
                            segment.getClass();
                            j10 = j11;
                        }
                        byte[] internalArray$okio2 = byteString.internalArray$okio();
                        byte b2 = internalArray$okio2[0];
                        long min3 = Math.min(j7, (this.size - j4) + 1);
                        long j12 = 0;
                        loop4: while (j10 < min3) {
                            byte[] bArr3 = segment.data;
                            j = j10;
                            int min4 = (int) Math.min(segment.limit, (segment.pos + min3) - j10);
                            for (int i2 = (int) ((segment.pos + j12) - j); i2 < min4; i2++) {
                                if (bArr3[i2] == b2 && okio.internal.Buffer.rangeEquals(segment, i2 + 1, internalArray$okio2, 1, size$okio)) {
                                    j2 = i2 - segment.pos;
                                    j3 = j2 + j;
                                    break loop1;
                                }
                            }
                            j12 = j + (segment.limit - segment.pos);
                            segment = segment.next;
                            segment.getClass();
                            j10 = j12;
                        }
                        j3 = -1;
                    }
                    if (j3 == -1) {
                        return z;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int read(byte[] bArr, int i, int i2) {
        UStringsKt.checkOffsetAndCount(bArr.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.limit - segment.pos);
        byte[] bArr2 = segment.data;
        int i3 = segment.pos;
        ArraysKt.copyInto(bArr2, i, i3, bArr, i3 + min);
        int i4 = segment.pos + min;
        segment.pos = i4;
        this.size -= min;
        if (i4 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public final long readAll(BufferedSink bufferedSink) {
        long j = this.size;
        if (j > 0) {
            bufferedSink.write(j, this);
        }
        return j;
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        if (this.size == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        segment.getClass();
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        this.size--;
        if (i3 != i2) {
            segment.pos = i3;
            return b;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return b;
    }

    public final byte[] readByteArray(long j) {
        if (j < 0 || j > 2147483647L) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount: ", j));
            return null;
        }
        if (this.size < j) {
            throw new EOFException();
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return bArr;
    }

    @Override // okio.BufferedSource
    public final ByteString readByteString(long j) {
        if (j < 0 || j > 2147483647L) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount: ", j));
            return null;
        }
        if (this.size < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new ByteString(readByteArray(j));
        }
        ByteString snapshot = snapshot((int) j);
        skip(j);
        return snapshot;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[EDGE_INSN: B:40:0x00a2->B:37:0x00a2 BREAK  A[LOOP:0: B:4:0x000c->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long readHexadecimalUnsignedLong() {
        /*
            r15 = this;
            long r0 = r15.size
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La9
            r0 = 0
            r1 = r0
            r6 = r1
            r4 = r2
        Lc:
            okio.Segment r7 = r15.head
            r7.getClass()
            byte[] r8 = r7.data
            int r9 = r7.pos
            int r10 = r7.limit
        L17:
            if (r9 >= r10) goto L8e
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L26
            r12 = 57
            if (r11 > r12) goto L26
            int r12 = r11 + (-48)
            goto L3b
        L26:
            r12 = 97
            if (r11 < r12) goto L31
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L31
            int r12 = r11 + (-87)
            goto L3b
        L31:
            r12 = 65
            if (r11 < r12) goto L66
            r12 = 70
            if (r11 > r12) goto L66
            int r12 = r11 + (-55)
        L3b:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r13 = r13 & r4
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 != 0) goto L4b
            r11 = 4
            long r4 = r4 << r11
            long r11 = (long) r12
            long r4 = r4 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            goto L17
        L4b:
            okio.Buffer r15 = new okio.Buffer
            r15.<init>()
            r15.writeHexadecimalUnsignedLong(r4)
            r15.m714writeByte(r11)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.readUtf8()
            java.lang.String r1 = "Number too large: "
            java.lang.String r15 = r1.concat(r15)
            r0.<init>(r15)
            throw r0
        L66:
            r6 = 1
            if (r1 == 0) goto L6a
            goto L8e
        L6a:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            int r1 = r11 >> 4
            r1 = r1 & 15
            char[] r2 = okio.internal.ZipFilesKt.HEX_DIGIT_CHARS
            char r1 = r2[r1]
            r3 = r11 & 15
            char r2 = r2[r3]
            r3 = 2
            char[] r3 = new char[r3]
            r3[r0] = r1
            r3[r6] = r2
            java.lang.String r0 = new java.lang.String
            r0.<init>(r3)
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = r1.concat(r0)
            r15.<init>(r0)
            throw r15
        L8e:
            if (r9 != r10) goto L9a
            okio.Segment r8 = r7.pop()
            r15.head = r8
            okio.SegmentPool.recycle(r7)
            goto L9c
        L9a:
            r7.pos = r9
        L9c:
            if (r6 != 0) goto La2
            okio.Segment r7 = r15.head
            if (r7 != 0) goto Lc
        La2:
            long r2 = r15.size
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.size = r2
            return r4
        La9:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public final int readInt() {
        if (this.size < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        segment.getClass();
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.size -= 4;
        if (i5 != i2) {
            segment.pos = i5;
            return i6;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return i6;
    }

    @Override // okio.BufferedSource
    public final short readShort() {
        if (this.size < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        segment.getClass();
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.size -= 2;
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i5;
        }
        return (short) i6;
    }

    public final short readShortLe() {
        short readShort = readShort();
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    public final String readString(long j, Charset charset) {
        charset.getClass();
        if (j < 0 || j > 2147483647L) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount: ", j));
            return null;
        }
        if (this.size < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        Segment segment = this.head;
        segment.getClass();
        int i = segment.pos;
        if (i + j > segment.limit) {
            return new String(readByteArray(j), charset);
        }
        int i2 = (int) j;
        String str = new String(segment.data, i, i2, charset);
        int i3 = segment.pos + i2;
        segment.pos = i3;
        this.size -= j;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    public final String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public final String readUtf8LineStrict(long j) {
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("limit < 0: ", j));
            return null;
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long indexOf = indexOf((byte) 10, 0L, j2);
        if (indexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(indexOf, this);
        }
        if (j2 < this.size && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
            return okio.internal.Buffer.readUtf8Line(j2, this);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, this.size));
        throw new EOFException("\\n not found: limit=" + Math.min(this.size, j) + " content=" + buffer.readByteString(buffer.size).hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public final boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public final void require(long j) {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public final int select(Options options) {
        options.getClass();
        int selectPrefix = okio.internal.Buffer.selectPrefix(this, options, false);
        if (selectPrefix == -1) {
            return -1;
        }
        skip(options.byteStrings[selectPrefix].getSize$okio());
        return selectPrefix;
    }

    @Override // okio.BufferedSource
    public final void skip(long j) {
        while (j > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, segment.limit - segment.pos);
            long j2 = min;
            this.size -= j2;
            j -= j2;
            int i = segment.pos + min;
            segment.pos = i;
            if (i == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final ByteString snapshot(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        UStringsKt.checkOffsetAndCount(this.size, 0L, i);
        Segment segment = this.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            segment.getClass();
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            segment = segment.next;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.head;
        int i7 = 0;
        while (i2 < i) {
            segment2.getClass();
            bArr[i7] = segment2.data;
            i2 += segment2.limit - segment2.pos;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = segment2.pos;
            segment2.shared = true;
            i7++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return Timeout.NONE;
    }

    public final String toString() {
        long j = this.size;
        if (j <= 2147483647L) {
            return snapshot((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.size).toString());
    }

    public final Segment writableSegment$okio(int i) {
        if (i < 1 || i > 8192) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("unexpected capacity");
            return null;
        }
        Segment segment = this.head;
        if (segment == null) {
            Segment take = SegmentPool.take();
            this.head = take;
            take.prev = take;
            take.next = take;
            return take;
        }
        Segment segment2 = segment.prev;
        segment2.getClass();
        if (segment2.limit + i <= 8192 && segment2.owner) {
            return segment2;
        }
        Segment take2 = SegmentPool.take();
        segment2.push(take2);
        return take2;
    }

    @Override // okio.Sink
    public final void write(long j, Buffer buffer) {
        Segment take;
        buffer.getClass();
        if (buffer == this) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("source == this");
            return;
        }
        UStringsKt.checkOffsetAndCount(buffer.size, 0L, j);
        while (j > 0) {
            Segment segment = buffer.head;
            segment.getClass();
            int i = segment.limit;
            Segment segment2 = buffer.head;
            segment2.getClass();
            long j2 = i - segment2.pos;
            int i2 = 0;
            if (j < j2) {
                Segment segment3 = this.head;
                Segment segment4 = segment3 != null ? segment3.prev : null;
                if (segment4 != null && segment4.owner) {
                    if ((segment4.limit + j) - (segment4.shared ? 0 : segment4.pos) <= 8192) {
                        Segment segment5 = buffer.head;
                        segment5.getClass();
                        segment5.writeTo(segment4, (int) j);
                        buffer.size -= j;
                        this.size += j;
                        return;
                    }
                }
                Segment segment6 = buffer.head;
                segment6.getClass();
                int i3 = (int) j;
                if (i3 <= 0 || i3 > segment6.limit - segment6.pos) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("byteCount out of range");
                    return;
                }
                if (i3 >= 1024) {
                    take = segment6.sharedCopy();
                } else {
                    take = SegmentPool.take();
                    byte[] bArr = segment6.data;
                    byte[] bArr2 = take.data;
                    int i4 = segment6.pos;
                    ArraysKt.copyInto(bArr, 0, i4, bArr2, i4 + i3);
                }
                take.limit = take.pos + i3;
                segment6.pos += i3;
                Segment segment7 = segment6.prev;
                segment7.getClass();
                segment7.push(take);
                buffer.head = take;
            }
            Segment segment8 = buffer.head;
            segment8.getClass();
            long j3 = segment8.limit - segment8.pos;
            buffer.head = segment8.pop();
            Segment segment9 = this.head;
            if (segment9 == null) {
                this.head = segment8;
                segment8.prev = segment8;
                segment8.next = segment8;
            } else {
                Segment segment10 = segment9.prev;
                segment10.getClass();
                segment10.push(segment8);
                Segment segment11 = segment8.prev;
                if (segment11 == segment8) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("cannot compact");
                    return;
                }
                segment11.getClass();
                if (segment11.owner) {
                    int i5 = segment8.limit - segment8.pos;
                    Segment segment12 = segment8.prev;
                    segment12.getClass();
                    int i6 = 8192 - segment12.limit;
                    Segment segment13 = segment8.prev;
                    segment13.getClass();
                    if (!segment13.shared) {
                        Segment segment14 = segment8.prev;
                        segment14.getClass();
                        i2 = segment14.pos;
                    }
                    if (i5 <= i6 + i2) {
                        Segment segment15 = segment8.prev;
                        segment15.getClass();
                        segment8.writeTo(segment15, i5);
                        segment8.pop();
                        SegmentPool.recycle(segment8);
                    }
                }
            }
            buffer.size -= j3;
            this.size += j3;
            j -= j3;
        }
    }

    public final void writeAll(Source source) {
        source.getClass();
        while (source.read(8192L, this) != -1) {
        }
    }

    /* renamed from: writeByte, reason: collision with other method in class */
    public final void m714writeByte(int i) {
        Segment writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        writableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
    }

    public final void writeDecimalLong(long j) {
        boolean z;
        if (j == 0) {
            m714writeByte(48);
            return;
        }
        if (j < 0) {
            j = -j;
            if (j < 0) {
                m717writeUtf8("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = okio.internal.Buffer.HEX_DIGIT_BYTES;
        int numberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        int i = numberOfLeadingZeros + (j > okio.internal.Buffer.DigitCountToLargestValue[numberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i++;
        }
        Segment writableSegment$okio = writableSegment$okio(i);
        byte[] bArr2 = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit + i;
        while (j != 0) {
            i2--;
            bArr2[i2] = okio.internal.Buffer.HEX_DIGIT_BYTES[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr2[i2 - 1] = 45;
        }
        writableSegment$okio.limit += i;
        this.size += i;
    }

    public final void writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            m714writeByte(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = writableSegment$okio(i);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.HEX_DIGIT_BYTES[(int) (15 & j)];
            j >>>= 4;
        }
        writableSegment$okio.limit += i;
        this.size += i;
    }

    /* renamed from: writeInt, reason: collision with other method in class */
    public final void m715writeInt(int i) {
        Segment writableSegment$okio = writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        writableSegment$okio.limit = i2 + 4;
        this.size += 4;
    }

    /* renamed from: writeShort, reason: collision with other method in class */
    public final void m716writeShort(int i) {
        Segment writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        writableSegment$okio.limit = i2 + 2;
        this.size += 2;
    }

    public final void writeUtf8(int i, int i2, String str) {
        char charAt;
        str.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i2, i, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i2 > str.length()) {
            StringBuilder m179m = Modifier.CC.m179m("endIndex > string.length: ", i2, " > ");
            m179m.append(str.length());
            throw new IllegalArgumentException(m179m.toString().toString());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                Segment writableSegment$okio = writableSegment$okio(1);
                byte[] bArr = writableSegment$okio.data;
                int i3 = writableSegment$okio.limit - i;
                int min = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) charAt2;
                while (true) {
                    i = i4;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                }
                int i5 = writableSegment$okio.limit;
                int i6 = (i3 + i) - i5;
                writableSegment$okio.limit = i5 + i6;
                this.size += i6;
            } else {
                if (charAt2 < 2048) {
                    Segment writableSegment$okio2 = writableSegment$okio(2);
                    byte[] bArr2 = writableSegment$okio2.data;
                    int i7 = writableSegment$okio2.limit;
                    bArr2[i7] = (byte) ((charAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio2.limit = i7 + 2;
                    this.size += 2;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    Segment writableSegment$okio3 = writableSegment$okio(3);
                    byte[] bArr3 = writableSegment$okio3.data;
                    int i8 = writableSegment$okio3.limit;
                    bArr3[i8] = (byte) ((charAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio3.limit = i8 + 3;
                    this.size += 3;
                } else {
                    int i9 = i + 1;
                    char charAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (charAt2 > 56319 || 56320 > charAt3 || charAt3 >= 57344) {
                        m714writeByte(63);
                        i = i9;
                    } else {
                        int i10 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                        Segment writableSegment$okio4 = writableSegment$okio(4);
                        byte[] bArr4 = writableSegment$okio4.data;
                        int i11 = writableSegment$okio4.limit;
                        bArr4[i11] = (byte) ((i10 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        writableSegment$okio4.limit = i11 + 4;
                        this.size += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    public final void writeUtf8CodePoint(int i) {
        if (i < 128) {
            m714writeByte(i);
            return;
        }
        if (i < 2048) {
            Segment writableSegment$okio = writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i2 = writableSegment$okio.limit;
            bArr[i2] = (byte) ((i >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            writableSegment$okio.limit = i2 + 2;
            this.size += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            m714writeByte(63);
            return;
        }
        if (i < 65536) {
            Segment writableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = writableSegment$okio2.data;
            int i3 = writableSegment$okio2.limit;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            writableSegment$okio2.limit = i3 + 3;
            this.size += 3;
            return;
        }
        if (i > 1114111) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unexpected code point: 0x".concat(UStringsKt.toHexString(i)));
            return;
        }
        Segment writableSegment$okio3 = writableSegment$okio(4);
        byte[] bArr3 = writableSegment$okio3.data;
        int i4 = writableSegment$okio3.limit;
        bArr3[i4] = (byte) ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
        bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((i & 63) | 128);
        writableSegment$okio3.limit = i4 + 4;
        this.size += 4;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, okio.Sink
    public final void close() {
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
    }

    @Override // okio.BufferedSource
    public final Buffer getBuffer() {
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeByte(int i) {
        m714writeByte(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeShort(int i) {
        m716writeShort(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeInt(int i) {
        m715writeInt(i);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, min);
        int i = segment.pos + min;
        segment.pos = i;
        this.size -= min;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.Source
    public final long read(long j, Buffer buffer) {
        buffer.getClass();
        if (j >= 0) {
            long j2 = this.size;
            if (j2 == 0) {
                return -1L;
            }
            if (j > j2) {
                j = j2;
            }
            buffer.write(j, this);
            return j;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j));
        return 0L;
    }

    @Override // okio.BufferedSource
    public final String readString(Charset charset) {
        charset.getClass();
        return readString(this.size, charset);
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink write(ByteString byteString) {
        m713write(byteString);
        return this;
    }

    /* renamed from: write, reason: collision with other method in class */
    public final void m713write(ByteString byteString) {
        byteString.getClass();
        byteString.write$okio(this, byteString.getSize$okio());
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i, 8192 - writableSegment$okio.limit);
            byteBuffer.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        write(bArr.length, bArr);
        return this;
    }

    public final void write(int i, byte[] bArr) {
        bArr.getClass();
        long j = i;
        UStringsKt.checkOffsetAndCount(bArr.length, 0L, j);
        int i2 = 0;
        while (i2 < i) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i - i2, 8192 - writableSegment$okio.limit);
            int i3 = i2 + min;
            ArraysKt.copyInto(bArr, writableSegment$okio.limit, i2, writableSegment$okio.data, i3);
            writableSegment$okio.limit += min;
            i2 = i3;
        }
        this.size += j;
    }

    /* renamed from: writeUtf8, reason: collision with other method in class */
    public final void m717writeUtf8(String str) {
        str.getClass();
        writeUtf8(0, str.length(), str);
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeUtf8(String str) {
        m717writeUtf8(str);
        return this;
    }
}
