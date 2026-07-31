package coil3.network;

import okio.BufferedSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SourceResponseBody implements AutoCloseable {
    public final BufferedSource source;

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
