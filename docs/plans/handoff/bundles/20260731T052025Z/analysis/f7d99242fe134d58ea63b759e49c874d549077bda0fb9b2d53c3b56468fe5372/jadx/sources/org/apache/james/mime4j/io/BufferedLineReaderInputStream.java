package org.apache.james.mime4j.io;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.util.BufferRecycler;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BufferedLineReaderInputStream extends LineReaderInputStream {
    public static final ThreadLocal _recyclerRef = new ThreadLocal();
    public byte[] buffer;
    public int buflen;
    public int bufpos;
    public byte[] cachedShiftPattern;
    public final int maxLineLen;
    public final int[] shiftTable;
    public boolean tempBuffer;
    public boolean truncated;

    public BufferedLineReaderInputStream(InputStream inputStream, int i) {
        super(inputStream);
        this.tempBuffer = false;
        if (inputStream == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Input stream may not be null");
            throw null;
        }
        BufferRecycler bufferRecycler = getBufferRecycler();
        this.buffer = bufferRecycler.allocByteBuffer(0, 4096);
        this.bufpos = 0;
        this.buflen = 0;
        this.maxLineLen = i;
        this.truncated = false;
        ArrayList arrayList = bufferRecycler._intBuffers;
        int[] iArr = arrayList.size() > 0 ? (int[]) Modifier.CC.m(1, arrayList) : null;
        this.shiftTable = (iArr == null || iArr.length < 256) ? new int[256] : iArr;
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

    public final int bufferLen() {
        return this.buflen - this.bufpos;
    }

    public final int byteAt(int i) {
        if (i >= this.bufpos && i <= this.buflen) {
            return this.buffer[i] & 255;
        }
        StringBuilder m30m = CameraDevices$CC.m30m(i, "looking for ", " in ");
        m30m.append(this.bufpos);
        m30m.append("/");
        Regex$$ExternalSyntheticBUOutline0.m(this.buflen, m30m);
        return 0;
    }

    public final int fillBuffer() {
        boolean z = this.tempBuffer;
        int i = this.bufpos;
        if (z) {
            if (i != this.buflen) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unread only works when a buffer is fully read before the next refill is asked!");
                return 0;
            }
            this.buffer = null;
            this.buflen = 0;
            this.bufpos = 0;
            this.tempBuffer = false;
            return bufferLen();
        }
        if (i > 0) {
            int bufferLen = bufferLen();
            if (bufferLen > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, this.bufpos, bArr, 0, bufferLen);
            }
            this.bufpos = 0;
            this.buflen = bufferLen;
        }
        int i2 = this.buflen;
        int read = ((FilterInputStream) this).in.read(this.buffer, i2, this.buffer.length - i2);
        if (read == -1) {
            return -1;
        }
        this.buflen = i2 + read;
        return read;
    }

    public final int indexOf(int i, int i2) {
        int i3;
        if (i < this.bufpos || i2 < 0 || (i3 = i2 + i) > this.buflen) {
            throw new IndexOutOfBoundsException();
        }
        while (i < i3) {
            if (this.buffer[i] == 10) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (!this.truncated) {
            if (bArr == null) {
                return 0;
            }
            while (bufferLen() <= 0) {
                if (fillBuffer() == -1) {
                }
            }
            int bufferLen = bufferLen();
            if (bufferLen <= i2) {
                i2 = bufferLen;
            }
            System.arraycopy(this.buffer, this.bufpos, bArr, i, i2);
            this.bufpos += i2;
            return i2;
        }
        return -1;
    }

    @Override // org.apache.james.mime4j.io.LineReaderInputStream
    public final int readLine(ByteArrayBuffer byteArrayBuffer) {
        int bufferLen;
        boolean z = false;
        if (byteArrayBuffer == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Buffer may not be null");
            return 0;
        }
        if (!this.truncated) {
            int i = 0;
            int i2 = 0;
            while (!z && (bufferLen() > 0 || (i2 = fillBuffer()) != -1)) {
                int indexOf = indexOf(this.bufpos, bufferLen());
                if (indexOf != -1) {
                    bufferLen = (indexOf + 1) - this.bufpos;
                    z = true;
                } else {
                    bufferLen = bufferLen();
                }
                if (bufferLen > 0) {
                    byteArrayBuffer.append(this.buffer, this.bufpos, bufferLen);
                    skip(bufferLen);
                    i += bufferLen;
                }
                int i3 = this.maxLineLen;
                if (i3 > 0 && byteArrayBuffer.len >= i3) {
                    throw new MaxLineLimitException(CameraDevices$CC.m(i3, "Maximum line length limit (", ") exceeded"));
                }
            }
            if (i != 0 || i2 != -1) {
                return i;
            }
        }
        return -1;
    }

    public final void skip(int i) {
        this.bufpos += Math.min(i, bufferLen());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[pos: ");
        sb.append(this.bufpos);
        sb.append("][limit: ");
        sb.append(this.buflen);
        sb.append("][");
        for (int i = this.bufpos; i < this.buflen; i++) {
            sb.append((char) this.buffer[i]);
        }
        sb.append("]");
        if (this.tempBuffer) {
            sb.append("-ORIG[pos: ");
            sb.append(0);
            sb.append("][limit: ");
            sb.append(0);
            sb.append("][");
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        if (this.truncated) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (!this.truncated) {
            while (bufferLen() <= 0) {
                if (fillBuffer() == -1) {
                }
            }
            byte[] bArr = this.buffer;
            int i = this.bufpos;
            this.bufpos = i + 1;
            return bArr[i] & 255;
        }
        return -1;
    }
}
