package okio.internal;

import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FixedLengthSource extends ForwardingSource {
    public long bytesReceived;
    public final long size;
    public final boolean truncate;

    public FixedLengthSource(Source source, long j, boolean z) {
        super(source);
        this.size = j;
        this.truncate = z;
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j) {
        buffer.getClass();
        long j2 = this.bytesReceived;
        long j3 = this.size;
        if (j2 > j3) {
            j = 0;
        } else if (this.truncate) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long read = this.delegate.read(buffer, j);
        if (read != -1) {
            this.bytesReceived += read;
        }
        long j5 = this.bytesReceived;
        if ((j5 >= j3 || read != -1) && j5 <= j3) {
            return read;
        }
        if (read > 0 && j5 > j3) {
            long j6 = buffer.size - (j5 - j3);
            Buffer buffer2 = new Buffer();
            buffer2.writeAll(buffer);
            buffer.write(buffer2, j6);
            buffer2.clear();
        }
        throw new IOException("expected " + j3 + " bytes but got " + this.bytesReceived);
    }
}
