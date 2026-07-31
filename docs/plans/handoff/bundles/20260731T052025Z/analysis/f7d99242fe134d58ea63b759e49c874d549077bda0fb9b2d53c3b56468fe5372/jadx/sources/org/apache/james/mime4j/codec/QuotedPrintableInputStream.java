package org.apache.james.mime4j.codec;

import de.cketti.changelog.XmlParser;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.codec.DecodeMonitor;
import org.apache.james.mime4j.util.BufferRecycler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class QuotedPrintableInputStream extends InputStream implements InputStreamRetargetInterface {
    public static final ThreadLocal _recyclerRef = new ThreadLocal();
    public final XmlParser blanks;
    public boolean closed;
    public final XmlParser decodedBuf;
    public final byte[] encoded;
    public final InputStream in;
    public boolean lastWasCR;
    public int limit;
    public final DecodeMonitor monitor;
    public int pos;
    public final byte[] singleByte;

    public QuotedPrintableInputStream(InputStream inputStream, DecodeMonitor decodeMonitor, int i) {
        this.singleByte = new byte[1];
        this.pos = 0;
        this.limit = 0;
        this.lastWasCR = false;
        this.in = inputStream;
        BufferRecycler bufferRecycler = getBufferRecycler();
        this.encoded = bufferRecycler.allocByteBuffer(1, 2048);
        this.decodedBuf = new XmlParser(bufferRecycler, 512);
        this.blanks = new XmlParser(bufferRecycler, 512);
        this.closed = false;
        this.monitor = decodeMonitor;
    }

    public static int convert(int i) {
        if (i >= 48 && i <= 57) {
            return i - 48;
        }
        if (i >= 65 && i <= 70) {
            return i - 55;
        }
        if (i < 97 || i > 102) {
            return -1;
        }
        return i - 87;
    }

    public static BufferRecycler getBufferRecycler() {
        ThreadLocal threadLocal = _recyclerRef;
        SoftReference softReference = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        threadLocal.set(new SoftReference(bufferRecycler2));
        return bufferRecycler2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        getBufferRecycler().releaseByteBuffer(1, this.encoded);
        XmlParser xmlParser = this.decodedBuf;
        ((BufferRecycler) xmlParser.xmlPullParser).releaseByteBuffer(0, (byte[]) xmlParser.result);
        XmlParser xmlParser2 = this.blanks;
        ((BufferRecycler) xmlParser2.xmlPullParser).releaseByteBuffer(0, (byte[]) xmlParser2.result);
    }

    public final int peek(int i) {
        int i2 = this.pos + i;
        if (i2 < this.limit) {
            return this.encoded[i2] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        XmlParser xmlParser;
        int i6;
        QuotedPrintableInputStream quotedPrintableInputStream = this;
        if (quotedPrintableInputStream.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
            return 0;
        }
        int i7 = i + i2;
        XmlParser xmlParser2 = quotedPrintableInputStream.decodedBuf;
        int i8 = xmlParser2.lastVersionCode;
        if (i8 > 0) {
            int min = Math.min(i8, i7 - i);
            System.arraycopy((byte[]) xmlParser2.result, 0, bArr, i, min);
            xmlParser2.remove(min);
            i3 = i + min;
        } else {
            i3 = i;
        }
        boolean z = false;
        while (i3 < i7) {
            int i9 = quotedPrintableInputStream.limit;
            int i10 = quotedPrintableInputStream.pos;
            int i11 = i9 - i10;
            byte[] bArr2 = quotedPrintableInputStream.encoded;
            if (i11 < 3) {
                if (i10 < i9) {
                    System.arraycopy(bArr2, i10, bArr2, 0, i11);
                    quotedPrintableInputStream.limit -= quotedPrintableInputStream.pos;
                    quotedPrintableInputStream.pos = 0;
                } else {
                    quotedPrintableInputStream.limit = 0;
                    quotedPrintableInputStream.pos = 0;
                }
                int length = bArr2.length;
                int i12 = quotedPrintableInputStream.limit;
                int i13 = length - i12;
                if (i13 > 0) {
                    i6 = quotedPrintableInputStream.in.read(bArr2, i12, i13);
                    if (i6 > 0) {
                        quotedPrintableInputStream.limit += i6;
                    }
                } else {
                    i6 = 0;
                }
                z = i6 == -1;
            }
            boolean z2 = z;
            if (quotedPrintableInputStream.limit - quotedPrintableInputStream.pos == 0 && z2) {
                if (i3 == i) {
                    return -1;
                }
                return i3 - i;
            }
            int i14 = i3;
            while (true) {
                int i15 = quotedPrintableInputStream.pos;
                if (i15 >= quotedPrintableInputStream.limit || i14 >= i7) {
                    break;
                }
                quotedPrintableInputStream.pos = i15 + 1;
                int i16 = bArr2[i15] & 255;
                boolean z3 = quotedPrintableInputStream.lastWasCR;
                DecodeMonitor decodeMonitor = quotedPrintableInputStream.monitor;
                if (z3 && i16 != 10) {
                    decodeMonitor.getClass();
                    if (decodeMonitor instanceof DecodeMonitor.AnonymousClass1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Found CR without LF");
                        return 0;
                    }
                    i14 = quotedPrintableInputStream.transfer(13, bArr, i14, i7, false);
                } else if (!z3 && i16 == 10) {
                    decodeMonitor.getClass();
                    if (decodeMonitor instanceof DecodeMonitor.AnonymousClass1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Found LF without CR");
                        return 0;
                    }
                }
                if (i16 == 13) {
                    quotedPrintableInputStream.lastWasCR = true;
                } else {
                    quotedPrintableInputStream.lastWasCR = false;
                    XmlParser xmlParser3 = quotedPrintableInputStream.blanks;
                    if (i16 == 10) {
                        if (xmlParser3.lastVersionCode == 0) {
                            xmlParser = xmlParser3;
                            i14 = transfer(10, bArr, quotedPrintableInputStream.transfer(13, bArr, i14, i7, false), i7, false);
                        } else {
                            xmlParser = xmlParser3;
                            if (xmlParser.byteAt(0) != 61) {
                                i14 = transfer(10, bArr, transfer(13, bArr, i14, i7, false), i7, false);
                            }
                        }
                        xmlParser.lastVersionCode = 0;
                    } else if (i16 == 61) {
                        int i17 = quotedPrintableInputStream.limit;
                        int i18 = quotedPrintableInputStream.pos;
                        if (i17 - i18 < 2 && !z2) {
                            quotedPrintableInputStream.pos = i18 - 1;
                            break;
                        }
                        if (i18 < i17) {
                            byte b = bArr2[i18];
                            quotedPrintableInputStream.pos = i18 + 1;
                            i4 = b & 255;
                        } else {
                            i4 = -1;
                        }
                        if (i4 == 61) {
                            int i19 = i4;
                            i14 = quotedPrintableInputStream.transfer(i19, bArr, i14, i7, true);
                            int peek = quotedPrintableInputStream.peek(0);
                            int peek2 = quotedPrintableInputStream.peek(1);
                            if (peek == 10 || (peek == 13 && peek2 == 10)) {
                                decodeMonitor.getClass();
                                xmlParser3.append(i19);
                            } else {
                                decodeMonitor.getClass();
                            }
                        } else {
                            int i20 = i4;
                            if (Character.isWhitespace((char) i20)) {
                                int peek3 = quotedPrintableInputStream.peek(0);
                                if (i20 != 13 || peek3 != 10) {
                                    decodeMonitor.getClass();
                                    if (decodeMonitor instanceof DecodeMonitor.AnonymousClass1) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Non-standard soft line break");
                                        return 0;
                                    }
                                }
                                if (peek3 == 10) {
                                    quotedPrintableInputStream.lastWasCR = i20 == 13;
                                }
                                i14 = quotedPrintableInputStream.transfer(-1, bArr, i14, i7, true);
                                if (i20 != 10) {
                                    xmlParser3.append(i16);
                                    xmlParser3.append(i20);
                                }
                            } else {
                                int i21 = quotedPrintableInputStream.pos;
                                if (i21 < quotedPrintableInputStream.limit) {
                                    byte b2 = bArr2[i21];
                                    quotedPrintableInputStream.pos = i21 + 1;
                                    i5 = b2 & 255;
                                } else {
                                    i5 = -1;
                                }
                                int convert = convert(i20);
                                int convert2 = convert(i5);
                                if (convert < 0 || convert2 < 0) {
                                    decodeMonitor.getClass();
                                    i14 = transfer(i5, bArr, transfer(i20, bArr, transfer(61, bArr, i14, i7, true), i7, false), i7, false);
                                } else {
                                    i14 = quotedPrintableInputStream.transfer((convert << 4) | convert2, bArr, i14, i7, true);
                                }
                            }
                        }
                    } else if (Character.isWhitespace(i16)) {
                        xmlParser3.append(i16);
                    } else {
                        i14 = transfer(i16, bArr, i14, i7, true);
                    }
                    quotedPrintableInputStream = this;
                }
            }
            quotedPrintableInputStream = this;
            i3 = i14;
            z = z2;
        }
        return i7 - i;
    }

    public final int transfer(int i, byte[] bArr, int i2, int i3, boolean z) {
        int i4;
        XmlParser xmlParser = this.decodedBuf;
        XmlParser xmlParser2 = this.blanks;
        if (!z || (i4 = xmlParser2.lastVersionCode) <= 0) {
            int i5 = xmlParser2.lastVersionCode;
            if (i5 > 0 && !z) {
                new StringBuilder(i5 * 3);
                for (int i6 = 0; i6 < xmlParser2.lastVersionCode; i6++) {
                    xmlParser2.byteAt(i6);
                }
                DecodeMonitor decodeMonitor = this.monitor;
                decodeMonitor.getClass();
                if (decodeMonitor instanceof DecodeMonitor.AnonymousClass1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$4("ignored blanks");
                    return 0;
                }
            }
        } else {
            int min = Math.min(i4, i3 - i2);
            System.arraycopy((byte[]) xmlParser2.result, 0, bArr, i2, min);
            i2 += min;
            int i7 = xmlParser2.lastVersionCode - min;
            if (i7 > 0) {
                xmlParser.append((byte[]) xmlParser2.result, min, i7);
            }
            xmlParser2.lastVersionCode = 0;
        }
        if (i != -1) {
            if (i2 < i3) {
                int i8 = i2 + 1;
                bArr[i2] = (byte) i;
                return i8;
            }
            xmlParser.append(i);
        }
        return i2;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    public QuotedPrintableInputStream(InputStream inputStream) {
        this(inputStream, DecodeMonitor.SILENT, 0);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr;
        int read;
        if (!this.closed) {
            do {
                bArr = this.singleByte;
                read = read(bArr, 0, 1);
                if (read == -1) {
                    return -1;
                }
            } while (read != 1);
            return bArr[0] & 255;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
        return 0;
    }
}
