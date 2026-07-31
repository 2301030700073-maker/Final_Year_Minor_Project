package androidx.camera.core.impl;

import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CameraCaptureCallback {
    public void onCaptureCancelled(int i) {
    }

    public void onCaptureStarted(int i) {
    }

    public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
    }

    public void onCaptureFailed(int i, Path.Companion companion) {
    }

    public void onCaptureProcessProgressed(int i, int i2) {
    }
}
