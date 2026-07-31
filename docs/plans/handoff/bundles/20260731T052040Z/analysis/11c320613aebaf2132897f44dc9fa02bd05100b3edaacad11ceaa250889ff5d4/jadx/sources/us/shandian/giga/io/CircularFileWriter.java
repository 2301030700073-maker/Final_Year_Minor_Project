package us.shandian.giga.io;

import android.util.Log;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.io.File;
import java.io.IOException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.streams.io.SharpStream;
import us.shandian.giga.postprocessing.Postprocessing;
import us.shandian.giga.postprocessing.Postprocessing$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class CircularFileWriter extends SharpStream {
    public BufferedFile aux;
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 callback;
    public long maxLengthKnown = -1;
    public Postprocessing$$ExternalSyntheticLambda3 onProgress;
    public Postprocessing$$ExternalSyntheticLambda3 onWriteError;
    public BufferedFile out;
    public long reportPosition;

    public CircularFileWriter(SharpStream sharpStream, File file, OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        if (!file.exists() && !file.createNewFile()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Cannot create a temporal file");
            throw null;
        }
        this.aux = new BufferedFile(file);
        this.out = new BufferedFile(sharpStream);
        this.callback = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        this.reportPosition = 65536L;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long available() {
        throw new UnsupportedOperationException("write-only");
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canRead() {
        return false;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean canWrite() {
        return true;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        BufferedFile bufferedFile = this.out;
        if (bufferedFile != null) {
            bufferedFile.queue = null;
            bufferedFile.target.close();
            this.out = null;
        }
        BufferedFile bufferedFile2 = this.aux;
        if (bufferedFile2 != null) {
            bufferedFile2.queue = null;
            bufferedFile2.target.close();
            this.aux = null;
        }
    }

    public final long finalizeFile() {
        flushAuxiliar(this.aux.length);
        this.out.flush();
        long max = Math.max(this.maxLengthKnown, this.out.length);
        if (max != this.out.target.length()) {
            this.out.target.setLength(max);
        }
        close();
        return max;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream, java.io.Flushable
    public final void flush() {
        this.aux.flush();
        this.out.flush();
        long j = this.out.length + this.aux.length;
        if (j > this.maxLengthKnown) {
            this.maxLengthKnown = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void flushAuxiliar(long r19) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.io.CircularFileWriter.flushAuxiliar(long):void");
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final boolean isClosed() {
        return this.out == null;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read() {
        throw new UnsupportedOperationException("write-only");
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void rewind() {
        Postprocessing$$ExternalSyntheticLambda3 postprocessing$$ExternalSyntheticLambda3 = this.onProgress;
        if (postprocessing$$ExternalSyntheticLambda3 != null) {
            postprocessing$$ExternalSyntheticLambda3.report(0L);
        }
        seek(0L);
        this.reportPosition = 65536L;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void seek(long j) {
        BufferedFile bufferedFile = this.out;
        long j2 = bufferedFile.length + this.aux.length;
        if (j == j2) {
            if (this.aux.getOffset() + bufferedFile.getOffset() == j2) {
                return;
            }
        }
        flush();
        if (j < 0 || j > j2) {
            StringBuilder m = Modifier.CC.m(j2, "desired offset is outside of range=0-", " offset=");
            m.append(j);
            throw new IOException(m.toString());
        }
        BufferedFile bufferedFile2 = this.out;
        long j3 = bufferedFile2.length;
        if (j > j3) {
            bufferedFile2.seek(j3);
            this.aux.seek(j - this.out.length);
        } else {
            bufferedFile2.seek(j);
            this.aux.seek(0L);
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final long skip(long j) {
        seek(this.aux.getOffset() + this.out.getOffset() + j);
        return j;
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr, int i, int i2) {
        long j;
        long j2;
        if (i2 == 0) {
            return;
        }
        long offset = this.out.getOffset();
        long offset2 = this.aux.getOffset();
        ChunkFileInputStream[] chunkFileInputStreamArr = (ChunkFileInputStream[]) this.callback.f$0;
        int length = chunkFileInputStreamArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                j = -1;
                break;
            }
            ChunkFileInputStream chunkFileInputStream = chunkFileInputStreamArr[i3];
            if (!chunkFileInputStream.isClosed() && chunkFileInputStream.available() >= 1) {
                j = (chunkFileInputStream.offset + chunkFileInputStream.position) - 1;
                break;
            }
            i3++;
        }
        if (j == -1) {
            j2 = 2147483647L;
        } else {
            if (j < offset) {
                StringBuilder m = Modifier.CC.m(j, "The reported offset is invalid: ", "<");
                m.append(offset);
                throw new IOException(m.toString());
            }
            j2 = j - offset;
        }
        BufferedFile bufferedFile = this.aux;
        long j3 = bufferedFile.length;
        boolean z = j3 > 0 && offset >= this.out.length;
        boolean z2 = offset2 < j3 || offset < this.out.length;
        if (z) {
            long j4 = i2;
            long j5 = offset2 + j4;
            if (!z2) {
                j3 += j4;
            } else if (j3 <= j5) {
                j3 = j5;
            }
            bufferedFile.write(bArr, i, i2);
            if (j3 >= 15728640 && j3 <= j2) {
                flushAuxiliar(j2);
            }
        } else {
            if (z2) {
                j2 = this.out.length - offset;
            }
            int min = Math.min(i2, (int) Math.min(2147483647L, j2));
            this.out.write(bArr, i, min);
            int i4 = i2 - min;
            int i5 = i + min;
            if (i4 > 0) {
                this.aux.write(bArr, i5, i4);
            }
        }
        if (this.onProgress != null) {
            long offset3 = this.aux.getOffset() + this.out.getOffset();
            if (offset3 > this.reportPosition) {
                this.reportPosition = 65536 + offset3;
                this.onProgress.report(offset3);
            }
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr) {
        throw new UnsupportedOperationException("write-only");
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("write-only");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BufferedFile {
        public long length;
        public long offset;
        public byte[] queue;
        public int queueSize;
        public final SharpStream target;

        public BufferedFile(File file) {
            this.queue = new byte[8192];
            this.target = new FileStream(file);
        }

        public final void flush() {
            writeProof(this.queueSize, this.queue);
            this.offset += this.queueSize;
            this.queueSize = 0;
        }

        public final long getOffset() {
            return this.offset + this.queueSize;
        }

        public final void seek(long j) {
            if (j == this.offset) {
                return;
            }
            this.offset = j;
            this.target.seek(j);
        }

        public final String toString() {
            String str;
            try {
                str = Long.toString(this.target.length());
            } catch (IOException e) {
                str = "[" + e.getLocalizedMessage() + "]";
            }
            long j = this.offset;
            long j2 = this.length;
            int i = this.queueSize;
            StringBuilder m = Modifier.CC.m(j, "offset=", "  length=");
            m.append(j2);
            m.append("  queue=");
            m.append(i);
            return Modifier.CC.m(m, "  absLength=", str);
        }

        public final void write(byte[] bArr, int i, int i2) {
            int length;
            while (i2 > 0) {
                int i3 = this.queueSize;
                byte[] bArr2 = this.queue;
                if (i3 >= bArr2.length) {
                    flush();
                    length = this.queue.length;
                } else {
                    length = bArr2.length - i3;
                }
                int min = Math.min(length, i2);
                System.arraycopy(bArr, i, this.queue, this.queueSize, min);
                this.queueSize += min;
                i2 -= min;
                i += min;
            }
            long j = this.offset + this.queueSize;
            if (j > this.length) {
                this.length = j;
            }
        }

        public final void writeProof(int i, byte[] bArr) {
            Postprocessing postprocessing;
            if (CircularFileWriter.this.onWriteError == null) {
                this.target.write(bArr, 0, i);
                return;
            }
            do {
                try {
                    this.target.write(bArr, 0, i);
                    return;
                } catch (Exception e) {
                    postprocessing = CircularFileWriter.this.onWriteError.f$0;
                    postprocessing.mission.psState = 3;
                    postprocessing.mission.notifyError(AnalyticsListener.EVENT_AUDIO_INPUT_FORMAT_CHANGED, e);
                    try {
                    } catch (InterruptedException unused) {
                        Log.e(postprocessing.getClass().getSimpleName(), "got InterruptedException");
                    }
                    synchronized (postprocessing) {
                        while (postprocessing.mission.psState == 3) {
                            try {
                                postprocessing.wait();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            } while (postprocessing.mission.errCode == -1);
            throw e;
        }

        public BufferedFile(SharpStream sharpStream) {
            this.queue = new byte[8192];
            this.target = sharpStream;
        }
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // org.schabi.newpipe.streams.io.SharpStream
    public final void write(byte b) {
        write(new byte[]{b}, 0, 1);
    }
}
