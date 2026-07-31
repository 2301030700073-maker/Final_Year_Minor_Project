package kotlin.reflect.jvm.internal.impl.protobuf;

import com.caverock.androidsvg.SVG;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CodedInputStream {
    public int bufferSizeAfterLimit;
    public final InputStream input;
    public int lastTag;
    public int recursionDepth;
    public int currentLimit = Integer.MAX_VALUE;
    public final byte[] buffer = new byte[4096];
    public int bufferSize = 0;
    public int bufferPos = 0;
    public int totalBytesRetired = 0;

    public CodedInputStream(InputStream inputStream) {
        this.input = inputStream;
    }

    public final void checkLastTagWas(int i) {
        if (this.lastTag != i) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final int getBytesUntilLimit() {
        int i = this.currentLimit;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.totalBytesRetired + this.bufferPos);
    }

    public final void popLimit(int i) {
        this.currentLimit = i;
        recomputeBufferSizeAfterLimit();
    }

    public final int pushLimit(int i) {
        if (i < 0) {
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = this.totalBytesRetired + this.bufferPos + i;
        int i3 = this.currentLimit;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.currentLimit = i2;
        recomputeBufferSizeAfterLimit();
        return i3;
    }

    public final LiteralByteString readBytes() {
        int readRawVarint32 = readRawVarint32();
        int i = this.bufferSize;
        int i2 = this.bufferPos;
        if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
            return readRawVarint32 == 0 ? ByteString.EMPTY : new LiteralByteString(readRawBytesSlowPath(readRawVarint32));
        }
        byte[] bArr = new byte[readRawVarint32];
        System.arraycopy(this.buffer, i2, bArr, 0, readRawVarint32);
        LiteralByteString literalByteString = new LiteralByteString(bArr);
        this.bufferPos += readRawVarint32;
        return literalByteString;
    }

    public final AbstractMessageLite readMessage(AbstractParser abstractParser, ExtensionRegistryLite extensionRegistryLite) {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth >= 64) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int pushLimit = pushLimit(readRawVarint32);
        this.recursionDepth++;
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) abstractParser.parsePartialFrom(this, extensionRegistryLite);
        checkLastTagWas(0);
        this.recursionDepth--;
        popLimit(pushLimit);
        return abstractMessageLite;
    }

    public final byte[] readRawBytesSlowPath(int i) {
        if (i <= 0) {
            if (i == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = this.totalBytesRetired;
        int i3 = this.bufferPos;
        int i4 = i2 + i3 + i;
        int i5 = this.currentLimit;
        if (i4 > i5) {
            skipRawBytes((i5 - i2) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        byte[] bArr = this.buffer;
        if (i < 4096) {
            byte[] bArr2 = new byte[i];
            int i6 = this.bufferSize - i3;
            System.arraycopy(bArr, i3, bArr2, 0, i6);
            this.bufferPos = this.bufferSize;
            int i7 = i - i6;
            if (i7 > 0) {
                refillBuffer(i7);
            }
            System.arraycopy(bArr, 0, bArr2, i6, i7);
            this.bufferPos = i7;
            return bArr2;
        }
        int i8 = this.bufferSize;
        this.totalBytesRetired = i2 + i8;
        this.bufferPos = 0;
        this.bufferSize = 0;
        int i9 = i8 - i3;
        int i10 = i - i9;
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int min = Math.min(i10, 4096);
            byte[] bArr3 = new byte[min];
            int i11 = 0;
            while (i11 < min) {
                int read = this.input.read(bArr3, i11, min - i11);
                if (read == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.totalBytesRetired += read;
                i11 += read;
            }
            i10 -= min;
            arrayList.add(bArr3);
        }
        byte[] bArr4 = new byte[i];
        System.arraycopy(bArr, i3, bArr4, 0, i9);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            byte[] bArr5 = (byte[]) it.next();
            System.arraycopy(bArr5, 0, bArr4, i9, bArr5.length);
            i9 += bArr5.length;
        }
        return bArr4;
    }

    public final int readRawLittleEndian32() {
        int i = this.bufferPos;
        if (this.bufferSize - i < 4) {
            refillBuffer(4);
            i = this.bufferPos;
        }
        this.bufferPos = i + 4;
        byte[] bArr = this.buffer;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long readRawLittleEndian64() {
        int i = this.bufferPos;
        if (this.bufferSize - i < 8) {
            refillBuffer(8);
            i = this.bufferPos;
        }
        this.bufferPos = i + 8;
        byte[] bArr = this.buffer;
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    public final int readRawVarint32() {
        int i;
        int i2 = this.bufferPos;
        int i3 = this.bufferSize;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.buffer;
            byte b = bArr[i2];
            if (b >= 0) {
                this.bufferPos = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                long j = i6;
                if (j < 0) {
                    i = (int) ((-128) ^ j);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    long j2 = i8;
                    if (j2 >= 0) {
                        i = (int) (16256 ^ j2);
                    } else {
                        int i9 = i2 + 4;
                        long j3 = i8 ^ (bArr[i7] << 21);
                        if (j3 < 0) {
                            i = (int) ((-2080896) ^ j3);
                        } else {
                            i7 = i2 + 5;
                            int i10 = (int) ((r1 ^ (r2 << 28)) ^ 266354560);
                            if (bArr[i9] < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i11 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i11;
                                                    i = i10;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i10;
                            }
                            i = i10;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.bufferPos = i5;
                return i;
            }
        }
        return (int) readRawVarint64SlowPath();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
    
        if (r3[r2] < 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long readRawVarint64() {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.readRawVarint64():long");
    }

    public final long readRawVarint64SlowPath() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.bufferPos == this.bufferSize) {
                refillBuffer(1);
            }
            int i2 = this.bufferPos;
            this.bufferPos = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.buffer[i2] & 128) == 0) {
                return j;
            }
        }
        throw new InvalidProtocolBufferException("CodedInputStream encountered a malformed varint.");
    }

    public final int readTag() {
        if (this.bufferPos == this.bufferSize && !tryRefillBuffer(1)) {
            this.lastTag = 0;
            return 0;
        }
        int readRawVarint32 = readRawVarint32();
        this.lastTag = readRawVarint32;
        if ((readRawVarint32 >>> 3) != 0) {
            return readRawVarint32;
        }
        throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
    }

    public final void recomputeBufferSizeAfterLimit() {
        int i = this.bufferSize + this.bufferSizeAfterLimit;
        this.bufferSize = i;
        int i2 = this.totalBytesRetired + i;
        int i3 = this.currentLimit;
        if (i2 <= i3) {
            this.bufferSizeAfterLimit = 0;
            return;
        }
        int i4 = i2 - i3;
        this.bufferSizeAfterLimit = i4;
        this.bufferSize = i - i4;
    }

    public final void refillBuffer(int i) {
        if (!tryRefillBuffer(i)) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public final boolean skipField(int i, SVG.PathDefinition pathDefinition) {
        int readTag;
        int i2 = i & 7;
        if (i2 == 0) {
            long readRawVarint64 = readRawVarint64();
            pathDefinition.writeRawVarint32(i);
            pathDefinition.writeRawVarint64(readRawVarint64);
            return true;
        }
        if (i2 == 1) {
            long readRawLittleEndian64 = readRawLittleEndian64();
            pathDefinition.writeRawVarint32(i);
            pathDefinition.writeRawLittleEndian64(readRawLittleEndian64);
            return true;
        }
        if (i2 == 2) {
            LiteralByteString readBytes = readBytes();
            pathDefinition.writeRawVarint32(i);
            pathDefinition.writeRawVarint32(readBytes.size());
            pathDefinition.writeRawBytes(readBytes);
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new InvalidProtocolBufferException("Protocol message tag had invalid wire type.");
            }
            int readRawLittleEndian32 = readRawLittleEndian32();
            pathDefinition.writeRawVarint32(i);
            pathDefinition.writeRawLittleEndian32(readRawLittleEndian32);
            return true;
        }
        pathDefinition.writeRawVarint32(i);
        do {
            readTag = readTag();
            if (readTag == 0) {
                break;
            }
        } while (skipField(readTag, pathDefinition));
        int i3 = ((i >>> 3) << 3) | 4;
        checkLastTagWas(i3);
        pathDefinition.writeRawVarint32(i3);
        return true;
    }

    public final void skipRawBytes(int i) {
        int i2 = this.bufferSize;
        int i3 = this.bufferPos;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.bufferPos = i3 + i;
            return;
        }
        if (i < 0) {
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i5 = this.totalBytesRetired;
        int i6 = i5 + i3 + i;
        int i7 = this.currentLimit;
        if (i6 > i7) {
            skipRawBytes((i7 - i5) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.bufferPos = i2;
        refillBuffer(1);
        while (true) {
            int i8 = i - i4;
            int i9 = this.bufferSize;
            if (i8 <= i9) {
                this.bufferPos = i8;
                return;
            } else {
                i4 += i9;
                this.bufferPos = i9;
                refillBuffer(1);
            }
        }
    }

    public final boolean tryRefillBuffer(int i) {
        int i2 = this.bufferPos;
        int i3 = i2 + i;
        int i4 = this.bufferSize;
        if (i3 <= i4) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        if (this.totalBytesRetired + i2 + i <= this.currentLimit) {
            byte[] bArr = this.buffer;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.totalBytesRetired += i2;
                i4 = this.bufferSize - i2;
                this.bufferSize = i4;
                this.bufferPos = 0;
            }
            int read = this.input.read(bArr, i4, bArr.length - i4);
            if (read == 0 || read < -1 || read > bArr.length) {
                StringBuilder sb2 = new StringBuilder(102);
                sb2.append("InputStream#read(byte[]) returned invalid result: ");
                sb2.append(read);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (read > 0) {
                this.bufferSize += read;
                if ((this.totalBytesRetired + i) - 67108864 > 0) {
                    throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
                recomputeBufferSizeAfterLimit();
                if (this.bufferSize >= i) {
                    return true;
                }
                return tryRefillBuffer(i);
            }
        }
        return false;
    }
}
