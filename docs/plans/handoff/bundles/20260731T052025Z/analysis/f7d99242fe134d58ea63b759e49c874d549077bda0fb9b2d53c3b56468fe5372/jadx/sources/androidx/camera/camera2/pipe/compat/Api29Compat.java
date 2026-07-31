package androidx.camera.camera2.pipe.compat;

import android.media.ImageWriter;
import android.view.Surface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api29Compat {
    public static final ImageWriter imageWriterNewInstance(int i, Surface surface) {
        ImageWriter newInstance = ImageWriter.newInstance(surface, 1, i);
        newInstance.getClass();
        return newInstance;
    }
}
