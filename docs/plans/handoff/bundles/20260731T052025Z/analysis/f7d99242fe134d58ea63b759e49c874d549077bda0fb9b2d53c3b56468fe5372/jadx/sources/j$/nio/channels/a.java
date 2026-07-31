package j$.nio.channels;

import j$.nio.file.attribute.FileAttribute;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.Channel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Channel {
    public static final FileAttribute[] b = new FileAttribute[0];
    public final /* synthetic */ AsynchronousFileChannel a;

    public a(AsynchronousFileChannel asynchronousFileChannel) {
        this.a = asynchronousFileChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AsynchronousFileChannel asynchronousFileChannel = this.a;
        if (obj instanceof a) {
            obj = ((a) obj).a;
        }
        return asynchronousFileChannel.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.channels.Channel
    public final /* synthetic */ boolean isOpen() {
        return this.a.isOpen();
    }
}
