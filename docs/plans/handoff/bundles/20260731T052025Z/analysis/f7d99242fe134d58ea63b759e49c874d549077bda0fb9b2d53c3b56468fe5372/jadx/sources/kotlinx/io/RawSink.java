package kotlinx.io;

import java.io.Flushable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RawSink extends AutoCloseable, Flushable {
    void close();

    @Override // java.io.Flushable
    void flush();

    void write(Buffer buffer, long j);
}
