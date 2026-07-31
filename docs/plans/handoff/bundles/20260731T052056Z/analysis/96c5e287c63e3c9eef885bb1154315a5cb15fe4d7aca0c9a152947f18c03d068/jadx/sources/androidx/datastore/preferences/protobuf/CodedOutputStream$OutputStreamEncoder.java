package androidx.datastore.preferences.protobuf;

import androidx.datastore.core.SingleProcessDataStore;
import androidx.datastore.preferences.protobuf.Utf8;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CodedOutputStream$OutputStreamEncoder {
    public final byte[] buffer;
    public final int limit;
    public final SingleProcessDataStore.UncloseableOutputStream out;
    public int position;
    public ManifestSchemaFactory wrapper;
    public static final Logger logger = Logger.getLogger(CodedOutputStream$OutputStreamEncoder.class.getName());
    public static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = UnsafeUtil.HAS_UNSAFE_ARRAY_OPERATIONS;

    public CodedOutputStream$OutputStreamEncoder(SingleProcessDataStore.UncloseableOutputStream uncloseableOutputStream, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("bufferSize must be >= 0");
            throw null;
        }
        int max = Math.max(i, 20);
        this.buffer = new byte[max];
        this.limit = max;
        this.out = uncloseableOutputStream;
    }

    public static int computeBytesSize(int i, ByteString$LiteralByteString byteString$LiteralByteString) {
        return computeBytesSizeNoTag(byteString$LiteralByteString) + computeTagSize(i);
    }

    public static int computeBytesSizeNoTag(ByteString$LiteralByteString byteString$LiteralByteString) {
        int size = byteString$LiteralByteString.size();
        return computeUInt32SizeNoTag(size) + size;
    }

    public static int computeFixed32Size(int i) {
        return computeTagSize(i) + 4;
    }

    public static int computeFixed64Size(int i) {
        return computeTagSize(i) + 8;
    }

    public static int computeGroupSize(int i, AbstractMessageLite abstractMessageLite, Schema schema) {
        return abstractMessageLite.getSerializedSize(schema) + (computeTagSize(i) * 2);
    }

    public static int computeInt32SizeNoTag(int i) {
        if (i >= 0) {
            return computeUInt32SizeNoTag(i);
        }
        return 10;
    }

    public static int computeStringSizeNoTag(String str) {
        int length;
        try {
            length = Utf8.encodedLength(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.UTF_8).length;
        }
        return computeUInt32SizeNoTag(length) + length;
    }

    public static int computeTagSize(int i) {
        return computeUInt32SizeNoTag(i << 3);
    }

    public static int computeUInt32SizeNoTag(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeUInt64SizeNoTag(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public final void bufferFixed32NoTag(int i) {
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        byte[] bArr = this.buffer;
        bArr[i2] = (byte) (i & 255);
        int i4 = i2 + 2;
        this.position = i4;
        bArr[i3] = (byte) ((i >> 8) & 255);
        int i5 = i2 + 3;
        this.position = i5;
        bArr[i4] = (byte) ((i >> 16) & 255);
        this.position = i2 + 4;
        bArr[i5] = (byte) ((i >> 24) & 255);
    }

    public final void bufferFixed64NoTag(long j) {
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte[] bArr = this.buffer;
        bArr[i] = (byte) (j & 255);
        int i3 = i + 2;
        this.position = i3;
        bArr[i2] = (byte) ((j >> 8) & 255);
        int i4 = i + 3;
        this.position = i4;
        bArr[i3] = (byte) ((j >> 16) & 255);
        int i5 = i + 4;
        this.position = i5;
        bArr[i4] = (byte) (255 & (j >> 24));
        int i6 = i + 5;
        this.position = i6;
        bArr[i5] = (byte) (((int) (j >> 32)) & 255);
        int i7 = i + 6;
        this.position = i7;
        bArr[i6] = (byte) (((int) (j >> 40)) & 255);
        int i8 = i + 7;
        this.position = i8;
        bArr[i7] = (byte) (((int) (j >> 48)) & 255);
        this.position = i + 8;
        bArr[i8] = (byte) (((int) (j >> 56)) & 255);
    }

    public final void bufferTag(int i, int i2) {
        bufferUInt32NoTag((i << 3) | i2);
    }

    public final void bufferUInt32NoTag(int i) {
        boolean z = HAS_UNSAFE_ARRAY_OPERATIONS;
        byte[] bArr = this.buffer;
        if (z) {
            while (true) {
                int i2 = i & (-128);
                int i3 = this.position;
                if (i2 == 0) {
                    this.position = i3 + 1;
                    UnsafeUtil.putByte(bArr, i3, (byte) i);
                    return;
                } else {
                    this.position = i3 + 1;
                    UnsafeUtil.putByte(bArr, i3, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            }
        } else {
            while (true) {
                int i4 = i & (-128);
                int i5 = this.position;
                if (i4 == 0) {
                    this.position = i5 + 1;
                    bArr[i5] = (byte) i;
                    return;
                } else {
                    this.position = i5 + 1;
                    bArr[i5] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                }
            }
        }
    }

    public final void bufferUInt64NoTag(long j) {
        boolean z = HAS_UNSAFE_ARRAY_OPERATIONS;
        byte[] bArr = this.buffer;
        if (z) {
            while (true) {
                long j2 = j & (-128);
                int i = this.position;
                if (j2 == 0) {
                    this.position = i + 1;
                    UnsafeUtil.putByte(bArr, i, (byte) j);
                    return;
                } else {
                    this.position = i + 1;
                    UnsafeUtil.putByte(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
            }
        } else {
            while (true) {
                long j3 = j & (-128);
                int i2 = this.position;
                if (j3 == 0) {
                    this.position = i2 + 1;
                    bArr[i2] = (byte) j;
                    return;
                } else {
                    this.position = i2 + 1;
                    bArr[i2] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                }
            }
        }
    }

    public final void doFlush() {
        this.out.write(this.buffer, 0, this.position);
        this.position = 0;
    }

    public final void flushIfNotAvailable(int i) {
        if (this.limit - this.position < i) {
            doFlush();
        }
    }

    public final void write(byte[] bArr, int i, int i2) {
        int i3 = this.position;
        int i4 = this.limit;
        int i5 = i4 - i3;
        byte[] bArr2 = this.buffer;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.position += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.position = i4;
        doFlush();
        if (i7 > i4) {
            this.out.write(bArr, i6, i7);
        } else {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.position = i7;
        }
    }

    public final void writeBool(int i, boolean z) {
        flushIfNotAvailable(11);
        bufferTag(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        int i2 = this.position;
        this.position = i2 + 1;
        this.buffer[i2] = b;
    }

    public final void writeBytes(int i, ByteString$LiteralByteString byteString$LiteralByteString) {
        writeTag(i, 2);
        writeBytesNoTag(byteString$LiteralByteString);
    }

    public final void writeBytesNoTag(ByteString$LiteralByteString byteString$LiteralByteString) {
        writeUInt32NoTag(byteString$LiteralByteString.size());
        writeLazy(byteString$LiteralByteString.bytes, byteString$LiteralByteString.getOffsetIntoBytes(), byteString$LiteralByteString.size());
    }

    public final void writeFixed32(int i, int i2) {
        flushIfNotAvailable(14);
        bufferTag(i, 5);
        bufferFixed32NoTag(i2);
    }

    public final void writeFixed32NoTag(int i) {
        flushIfNotAvailable(4);
        bufferFixed32NoTag(i);
    }

    public final void writeFixed64(long j, int i) {
        flushIfNotAvailable(18);
        bufferTag(i, 1);
        bufferFixed64NoTag(j);
    }

    public final void writeFixed64NoTag(long j) {
        flushIfNotAvailable(8);
        bufferFixed64NoTag(j);
    }

    public final void writeInt32(int i, int i2) {
        flushIfNotAvailable(20);
        bufferTag(i, 0);
        if (i2 >= 0) {
            bufferUInt32NoTag(i2);
        } else {
            bufferUInt64NoTag(i2);
        }
    }

    public final void writeInt32NoTag(int i) {
        if (i >= 0) {
            writeUInt32NoTag(i);
        } else {
            writeUInt64NoTag(i);
        }
    }

    public final void writeLazy(byte[] bArr, int i, int i2) {
        write(bArr, i, i2);
    }

    public final void writeString(int i, String str) {
        writeTag(i, 2);
        writeStringNoTag(str);
    }

    public final void writeStringNoTag(String str) {
        try {
            int length = str.length() * 3;
            int computeUInt32SizeNoTag = computeUInt32SizeNoTag(length);
            int i = computeUInt32SizeNoTag + length;
            int i2 = this.limit;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int encodeUtf8 = Utf8.processor.encodeUtf8(str, bArr, 0, length);
                writeUInt32NoTag(encodeUtf8);
                write(bArr, 0, encodeUtf8);
                return;
            }
            if (i > i2 - this.position) {
                doFlush();
            }
            int computeUInt32SizeNoTag2 = computeUInt32SizeNoTag(str.length());
            int i3 = this.position;
            byte[] bArr2 = this.buffer;
            try {
                try {
                    if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                        int i4 = i3 + computeUInt32SizeNoTag2;
                        this.position = i4;
                        int encodeUtf82 = Utf8.processor.encodeUtf8(str, bArr2, i4, i2 - i4);
                        this.position = i3;
                        bufferUInt32NoTag((encodeUtf82 - i3) - computeUInt32SizeNoTag2);
                        this.position = encodeUtf82;
                    } else {
                        int encodedLength = Utf8.encodedLength(str);
                        bufferUInt32NoTag(encodedLength);
                        this.position = Utf8.processor.encodeUtf8(str, bArr2, this.position, encodedLength);
                    }
                } catch (Utf8.UnpairedSurrogateException e) {
                    this.position = i3;
                    throw e;
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new IOException(e2) { // from class: androidx.datastore.preferences.protobuf.CodedOutputStream$OutOfSpaceException
                };
            }
        } catch (Utf8.UnpairedSurrogateException e3) {
            logger.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e3);
            byte[] bytes = str.getBytes(Internal.UTF_8);
            try {
                writeUInt32NoTag(bytes.length);
                writeLazy(bytes, 0, bytes.length);
            } catch (CodedOutputStream$OutOfSpaceException e4) {
                throw e4;
            } catch (IndexOutOfBoundsException e5) {
                throw new IOException(e5) { // from class: androidx.datastore.preferences.protobuf.CodedOutputStream$OutOfSpaceException
                };
            }
        }
    }

    public final void writeTag(int i, int i2) {
        writeUInt32NoTag((i << 3) | i2);
    }

    public final void writeUInt32(int i, int i2) {
        flushIfNotAvailable(20);
        bufferTag(i, 0);
        bufferUInt32NoTag(i2);
    }

    public final void writeUInt32NoTag(int i) {
        flushIfNotAvailable(5);
        bufferUInt32NoTag(i);
    }

    public final void writeUInt64(long j, int i) {
        flushIfNotAvailable(20);
        bufferTag(i, 0);
        bufferUInt64NoTag(j);
    }

    public final void writeUInt64NoTag(long j) {
        flushIfNotAvailable(10);
        bufferUInt64NoTag(j);
    }

    public final void write(byte b) {
        if (this.position == this.limit) {
            doFlush();
        }
        int i = this.position;
        this.position = i + 1;
        this.buffer[i] = b;
    }
}
