package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureFailure;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCaptureFailure implements RequestFailure {
    public final CaptureFailure captureFailure;
    public final int reason;
    public final boolean wasImageCaptured;

    public AndroidCaptureFailure(RequestMetadata requestMetadata, CaptureFailure captureFailure) {
        requestMetadata.getClass();
        this.captureFailure = captureFailure;
        captureFailure.getFrameNumber();
        this.reason = captureFailure.getReason();
        this.wasImageCaptured = captureFailure.wasImageCaptured();
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public final int getReason() {
        return this.reason;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public final boolean getWasImageCaptured() {
        return this.wasImageCaptured;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CaptureFailure.class))) {
            return this.captureFailure;
        }
        return null;
    }
}
