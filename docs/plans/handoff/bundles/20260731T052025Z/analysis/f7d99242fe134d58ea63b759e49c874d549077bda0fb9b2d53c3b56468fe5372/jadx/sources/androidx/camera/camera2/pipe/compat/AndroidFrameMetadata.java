package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFrameMetadata implements Metadata, UnsafeWrapper {
    public final String camera;
    public final CaptureResult captureResult;

    public AndroidFrameMetadata(CaptureResult captureResult, String str) {
        captureResult.getClass();
        str.getClass();
        this.captureResult = captureResult;
        this.camera = str;
    }

    public final String toString() {
        return "FrameMetadata(camera: " + ((Object) CameraId.m35toStringimpl(this.camera)) + ", frameNumber: " + this.captureResult.getFrameNumber() + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        boolean equals = classReference.equals(Reflection.getOrCreateKotlinClass(CaptureResult.class));
        CaptureResult captureResult = this.captureResult;
        if (equals) {
            captureResult.getClass();
            return captureResult;
        }
        if (!classReference.equals(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class)) || captureResult == null) {
            return null;
        }
        return captureResult;
    }
}
