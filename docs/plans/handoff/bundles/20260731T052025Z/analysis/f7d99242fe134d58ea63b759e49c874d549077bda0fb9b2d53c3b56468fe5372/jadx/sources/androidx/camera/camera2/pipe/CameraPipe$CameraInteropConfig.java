package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraDevice;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.cardview.widget.CardView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraPipe$CameraInteropConfig {
    public final CardView.AnonymousClass1 cameraCaptureSessionListener;
    public final CameraDevice.StateCallback cameraDeviceStateCallback;
    public final DurationNs cameraOpenRetryMaxTimeoutNs;

    public CameraPipe$CameraInteropConfig(CameraDevice.StateCallback stateCallback, CardView.AnonymousClass1 anonymousClass1, DurationNs durationNs) {
        this.cameraDeviceStateCallback = stateCallback;
        this.cameraCaptureSessionListener = anonymousClass1;
        this.cameraOpenRetryMaxTimeoutNs = durationNs;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPipe$CameraInteropConfig)) {
            return false;
        }
        CameraPipe$CameraInteropConfig cameraPipe$CameraInteropConfig = (CameraPipe$CameraInteropConfig) obj;
        return Intrinsics.areEqual(this.cameraDeviceStateCallback, cameraPipe$CameraInteropConfig.cameraDeviceStateCallback) && Intrinsics.areEqual(this.cameraCaptureSessionListener, cameraPipe$CameraInteropConfig.cameraCaptureSessionListener) && Intrinsics.areEqual(this.cameraOpenRetryMaxTimeoutNs, cameraPipe$CameraInteropConfig.cameraOpenRetryMaxTimeoutNs);
    }

    public final int hashCode() {
        CameraDevice.StateCallback stateCallback = this.cameraDeviceStateCallback;
        int hashCode = (stateCallback == null ? 0 : stateCallback.hashCode()) * 31;
        CardView.AnonymousClass1 anonymousClass1 = this.cameraCaptureSessionListener;
        int hashCode2 = (hashCode + (anonymousClass1 == null ? 0 : anonymousClass1.hashCode())) * 31;
        DurationNs durationNs = this.cameraOpenRetryMaxTimeoutNs;
        return hashCode2 + (durationNs != null ? DurationNs.m76hashCodeimpl(durationNs.value) : 0);
    }

    public final String toString() {
        return "CameraInteropConfig(cameraDeviceStateCallback=" + this.cameraDeviceStateCallback + ", cameraCaptureSessionListener=" + this.cameraCaptureSessionListener + ", cameraOpenRetryMaxTimeoutNs=" + this.cameraOpenRetryMaxTimeoutNs + ')';
    }
}
