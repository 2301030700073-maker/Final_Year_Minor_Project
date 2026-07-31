package kotlin.reflect.jvm.internal.impl.protobuf;

import coil3.network.HttpException;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractParser {
    static {
        int i = ExtensionRegistryLite.$r8$clinit;
    }

    public static void checkMessageInitialized(AbstractMessageLite abstractMessageLite) {
        if (abstractMessageLite == null || abstractMessageLite.isInitialized()) {
            return;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new HttpException(false).getMessage());
        invalidProtocolBufferException.unfinishedMessage = abstractMessageLite;
        throw invalidProtocolBufferException;
    }

    public final AbstractMessageLite parseDelimitedFrom(final ByteArrayInputStream byteArrayInputStream, ExtensionRegistryLite extensionRegistryLite) {
        AbstractMessageLite abstractMessageLite;
        try {
            final int read = byteArrayInputStream.read();
            if (read == -1) {
                abstractMessageLite = null;
            } else {
                if ((read & 128) != 0) {
                    read &= 127;
                    int i = 7;
                    while (true) {
                        if (i >= 32) {
                            while (i < 64) {
                                int read2 = byteArrayInputStream.read();
                                if (read2 == -1) {
                                    throw InvalidProtocolBufferException.truncatedMessage();
                                }
                                if ((read2 & 128) != 0) {
                                    i += 7;
                                }
                            }
                            throw new InvalidProtocolBufferException("CodedInputStream encountered a malformed varint.");
                        }
                        int read3 = byteArrayInputStream.read();
                        if (read3 == -1) {
                            throw InvalidProtocolBufferException.truncatedMessage();
                        }
                        read |= (read3 & 127) << i;
                        if ((read3 & 128) == 0) {
                            break;
                        }
                        i += 7;
                    }
                }
                CodedInputStream codedInputStream = new CodedInputStream(new FilterInputStream(byteArrayInputStream, read) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite$Builder$LimitedInputStream
                    public int limit;

                    {
                        this.limit = read;
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int available() {
                        return Math.min(super.available(), this.limit);
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int read(byte[] bArr, int i2, int i3) {
                        int i4 = this.limit;
                        if (i4 <= 0) {
                            return -1;
                        }
                        int read4 = super.read(bArr, i2, Math.min(i3, i4));
                        if (read4 >= 0) {
                            this.limit -= read4;
                        }
                        return read4;
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final long skip(long j) {
                        long skip = super.skip(Math.min(j, this.limit));
                        if (skip >= 0) {
                            this.limit = (int) (this.limit - skip);
                        }
                        return skip;
                    }

                    @Override // java.io.FilterInputStream, java.io.InputStream
                    public final int read() {
                        if (this.limit <= 0) {
                            return -1;
                        }
                        int read4 = super.read();
                        if (read4 >= 0) {
                            this.limit--;
                        }
                        return read4;
                    }
                });
                abstractMessageLite = (AbstractMessageLite) parsePartialFrom(codedInputStream, extensionRegistryLite);
                try {
                    codedInputStream.checkLastTagWas(0);
                } catch (InvalidProtocolBufferException e) {
                    e.unfinishedMessage = abstractMessageLite;
                    throw e;
                }
            }
            checkMessageInitialized(abstractMessageLite);
            return abstractMessageLite;
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2.getMessage());
        }
    }

    public abstract Object parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);
}
