package coil3.decode;

import coil3.decode.ImageSource;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteBufferMetadata extends ImageSource.Metadata {
    private final ByteBuffer byteBuffer;

    public ByteBufferMetadata(ByteBuffer byteBuffer) {
        this.byteBuffer = byteBuffer;
    }

    public final ByteBuffer getByteBuffer() {
        return this.byteBuffer;
    }
}
