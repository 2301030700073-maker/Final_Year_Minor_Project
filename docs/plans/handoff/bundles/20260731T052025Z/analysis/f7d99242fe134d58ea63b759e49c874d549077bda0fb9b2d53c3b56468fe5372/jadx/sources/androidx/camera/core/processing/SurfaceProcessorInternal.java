package androidx.camera.core.processing;

import androidx.camera.core.SurfaceRequest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SurfaceProcessorInternal {
    void onInputSurface(SurfaceRequest surfaceRequest);

    void onOutputSurface(SurfaceOutputImpl surfaceOutputImpl);

    void release();
}
