package okio.internal;

import androidx.compose.ui.Modifier;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final long read(long j, Buffer buffer) {
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
        long read = this.delegate.read(j, buffer);
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
            buffer.write(j6, buffer2);
            buffer2.skip(buffer2.size);
        }
        StringBuilder m = Modifier.CC.m(j3, "expected ", " bytes but got ");
        m.append(this.bytesReceived);
        throw new IOException(m.toString());
    }
}
