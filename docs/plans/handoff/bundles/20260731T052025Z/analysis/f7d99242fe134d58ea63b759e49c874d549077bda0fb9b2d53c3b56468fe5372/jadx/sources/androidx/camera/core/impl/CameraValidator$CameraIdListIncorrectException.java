package androidx.camera.core.impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraValidator$CameraIdListIncorrectException extends Exception {
    public final int availableCameraCount;

    public CameraValidator$CameraIdListIncorrectException(int i, RuntimeException runtimeException) {
        super("Expected camera missing from device.", runtimeException);
        this.availableCameraCount = i;
    }
}
