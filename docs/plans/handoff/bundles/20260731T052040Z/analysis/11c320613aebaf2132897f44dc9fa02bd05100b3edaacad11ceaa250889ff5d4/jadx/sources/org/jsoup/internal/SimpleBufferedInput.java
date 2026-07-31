package org.jsoup.internal;

import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.util.Log;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SimpleBufferedInput extends FilterInputStream implements InputStreamRetargetInterface {
    public static final TokenData BufferPool = new TokenData(new Entities$$ExternalSyntheticLambda0(1));
    public int bufLength;
    public int bufMark;
    public int bufPos;
    public byte[] byteBuf;
    public int capRemaining;
    public boolean inReadFully;

    public SimpleBufferedInput(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
        this.capRemaining = Log.LOG_LEVEL_OFF;
        this.bufMark = -1;
        this.inReadFully = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i = this.byteBuf != null ? this.bufLength - this.bufPos : 0;
        if (i > 0) {
            return i;
        }
        if (this.inReadFully) {
            return 0;
        }
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (((FilterInputStream) this).in != null) {
            super.close();
        }
        byte[] bArr = this.byteBuf;
        if (bArr == null) {
            return;
        }
        BufferPool.release(bArr);
        this.byteBuf = null;
    }

    public final void fill() {
        int min;
        int i;
        if (this.inReadFully) {
            return;
        }
        if (this.byteBuf == null) {
            this.byteBuf = (byte[]) BufferPool.borrow();
        }
        byte[] bArr = this.byteBuf;
        if (bArr != null && (i = this.bufPos) != 0) {
            int i2 = this.bufMark;
            if (i2 >= 0) {
                i = i2;
            }
            if (i > 0) {
                int i3 = this.bufLength - i;
                if (i3 > 0) {
                    System.arraycopy(bArr, i, bArr, 0, i3);
                }
                this.bufLength = i3;
                this.bufPos -= i;
                int i4 = this.bufMark;
                if (i4 >= 0) {
                    this.bufMark = i4 - i;
                }
            }
        }
        int i5 = this.bufPos;
        this.bufLength = i5;
        int min2 = Math.min(this.byteBuf.length - i5, this.capRemaining);
        if (min2 <= 0) {
            return;
        }
        int read = ((FilterInputStream) this).in.read(this.byteBuf, this.bufPos, min2);
        if (read > 0) {
            this.bufLength = this.bufPos + read;
            this.capRemaining -= read;
            while (this.byteBuf.length - this.bufLength > 0 && this.capRemaining > 0) {
                try {
                    if (((FilterInputStream) this).in.available() < 1 || (min = Math.min(this.byteBuf.length - this.bufLength, this.capRemaining)) <= 0 || (read = ((FilterInputStream) this).in.read(this.byteBuf, this.bufLength, min)) <= 0) {
                        break;
                    }
                    this.bufLength += read;
                    this.capRemaining -= read;
                } catch (IOException unused) {
                }
            }
        }
        if (read == -1) {
            this.inReadFully = true;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        SQLite.notNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bufLength - this.bufPos;
        if (i3 <= 0) {
            fill();
            i3 = this.bufLength - this.bufPos;
        }
        int min = Math.min(i3, i2);
        if (min <= 0) {
            return -1;
        }
        SQLite.notNull(this.byteBuf);
        System.arraycopy(this.byteBuf, this.bufPos, bArr, i, min);
        this.bufPos += min;
        return min;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.bufPos >= this.bufLength) {
            fill();
            if (this.bufPos >= this.bufLength) {
                return -1;
            }
        }
        SQLite.notNull(this.byteBuf);
        byte[] bArr = this.byteBuf;
        int i = this.bufPos;
        this.bufPos = i + 1;
        return bArr[i] & 255;
    }
}
