package coil3.fetch;

import java.nio.ByteBuffer;
import okio.Buffer;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteBufferFetcherKt {
    public static final Source asSource(final ByteBuffer byteBuffer) {
        return new Source(byteBuffer) { // from class: coil3.fetch.ByteBufferFetcherKt$asSource$1
            private final ByteBuffer buffer;
            private final int len;

            {
                ByteBuffer slice = byteBuffer.slice();
                this.buffer = slice;
                this.len = slice.capacity();
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) {
                if (this.buffer.position() == this.len) {
                    return -1L;
                }
                int position = (int) (this.buffer.position() + j);
                int i = this.len;
                if (position > i) {
                    position = i;
                }
                this.buffer.limit(position);
                return buffer.write(this.buffer);
            }

            @Override // okio.Source
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
    }
}
