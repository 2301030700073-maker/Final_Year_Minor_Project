package androidx.camera.core;

import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ImageProxy extends AutoCloseable {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface PlaneProxy {
        ByteBuffer getBuffer();

        int getPixelStride();

        int getRowStride();
    }

    int getFormat();

    int getHeight();

    ImageInfo getImageInfo();

    PlaneProxy[] getPlanes();

    int getWidth();
}
