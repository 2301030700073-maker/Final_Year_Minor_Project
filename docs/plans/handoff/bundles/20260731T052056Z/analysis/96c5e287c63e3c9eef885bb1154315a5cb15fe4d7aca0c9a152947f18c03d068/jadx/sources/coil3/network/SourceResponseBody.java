package coil3.network;

import okio.BufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SourceResponseBody implements AutoCloseable {
    public final BufferedSource source;

    public /* synthetic */ SourceResponseBody(BufferedSource bufferedSource) {
        this.source = bufferedSource;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.source.close();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SourceResponseBody) {
            return this.source.equals(((SourceResponseBody) obj).source);
        }
        return false;
    }

    public final int hashCode() {
        return this.source.hashCode();
    }

    public final String toString() {
        return "SourceResponseBody(source=" + this.source + ")";
    }
}
