package okhttp3.tls.internal.der;

import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.ForwardingSource;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DerReader {
    public static final DerHeader END_OF_DATA = new DerHeader(0, 0, false, -1);
    public boolean constructed;
    public final CountingSource countingSource;
    public long limit;
    public final ArrayList path;
    public DerHeader peekedHeader;
    public final RealBufferedSource source;
    public final ArrayList typeHintStack;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CountingSource extends ForwardingSource {
        public long bytesRead;

        @Override // okio.ForwardingSource, okio.Source
        public final long read(Buffer buffer, long j) {
            buffer.getClass();
            long read = this.delegate.read(buffer, j);
            if (read == -1) {
                return -1L;
            }
            this.bytesRead += read;
            return read;
        }
    }

    public DerReader(Buffer buffer) {
        CountingSource countingSource = new CountingSource(buffer);
        this.countingSource = countingSource;
        this.source = new RealBufferedSource(countingSource);
        this.limit = -1L;
        this.typeHintStack = new ArrayList();
        this.path = new ArrayList();
    }

    public final long getByteCount() {
        return this.countingSource.bytesRead - this.source.bufferField.size;
    }

    public final long getBytesLeft() {
        long j = this.limit;
        if (j == -1) {
            return -1L;
        }
        return j - getByteCount();
    }

    public final DerHeader peekHeader() {
        long j;
        DerHeader derHeader;
        long j2;
        DerHeader derHeader2 = this.peekedHeader;
        long j3 = 0;
        if (derHeader2 != null) {
            j = 0;
            derHeader = null;
        } else {
            if (derHeader2 != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return null;
            }
            long byteCount = getByteCount();
            long j4 = this.limit;
            DerHeader derHeader3 = END_OF_DATA;
            if (byteCount != j4) {
                RealBufferedSource realBufferedSource = this.source;
                if (j4 != -1 || !realBufferedSource.exhausted()) {
                    byte readByte = realBufferedSource.readByte();
                    int i = readByte & 192;
                    int i2 = 1;
                    boolean z = (readByte & 32) == 32;
                    int i3 = readByte & 31;
                    long readVariableLengthLong = i3 == 31 ? readVariableLengthLong() : i3;
                    byte readByte2 = realBufferedSource.readByte();
                    if ((readByte2 & 255) == 128) {
                        throw new ProtocolException("indefinite length not permitted for DER");
                    }
                    if ((readByte2 & 128) == 128) {
                        int i4 = readByte2 & Byte.MAX_VALUE;
                        if (i4 > 8) {
                            throw new ProtocolException("length encoded with more than 8 bytes is not supported");
                        }
                        long readByte3 = realBufferedSource.readByte();
                        j2 = readByte3 & 255;
                        if (j2 == 0 || (i4 == 1 && (readByte3 & 128) == 0)) {
                            throw new ProtocolException("invalid encoding for length");
                        }
                        while (i2 < i4) {
                            j2 = (j2 << 8) + (realBufferedSource.readByte() & 255);
                            i2++;
                            j3 = j3;
                        }
                        j = j3;
                        derHeader = null;
                        if (j2 < j) {
                            throw new ProtocolException("length > Long.MAX_VALUE");
                        }
                    } else {
                        j = 0;
                        derHeader = null;
                        j2 = readByte2 & Byte.MAX_VALUE;
                    }
                    derHeader2 = new DerHeader(i, readVariableLengthLong, z, j2);
                    this.peekedHeader = derHeader2;
                }
            }
            j = 0;
            derHeader2 = derHeader3;
            derHeader = null;
            this.peekedHeader = derHeader2;
        }
        return (derHeader2.tagClass == 0 && derHeader2.tag == j) ? derHeader : derHeader2;
    }

    public final String readUtf8String() {
        if (getBytesLeft() == -1 || this.constructed) {
            throw new ProtocolException("constructed strings not supported for DER");
        }
        return this.source.readUtf8(getBytesLeft());
    }

    public final long readVariableLengthLong() {
        long j = 0;
        while (true) {
            long readByte = this.source.readByte();
            long j2 = 255 & readByte;
            if ((readByte & 128) != 128) {
                return j + j2;
            }
            j = (j + (readByte & 127)) << 7;
        }
    }

    public final String toString() {
        return CollectionsKt.joinToString$default(this.path, " / ", null, null, null, 62);
    }
}
