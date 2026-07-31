package androidx.camera.camera2.config;

import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DaggerCameraAppComponent$UseCaseCameraComponentImpl {
    public final Provider captureConfigAdapterProvider;
    public final Provider capturePipelineImplProvider;
    public final Provider capturePipelineTorchCorrectionProvider;
    public final Provider deferredUseCaseCameraRequestControlProvider;
    public final Provider provideCapturePipelineProvider;
    public final Provider provideSessionConfigAdapterProvider;
    public final Provider provideSessionProcessorProvider;
    public final Provider provideUseCaseGraphContextProvider;
    public final UseCaseCameraConfig useCaseCameraConfig;
    public final Provider useCaseCameraImplProvider;
    public final Provider useCaseCameraRequestControlImplProvider;
    public final Provider useCaseCameraStateProvider;
    public final Provider useCaseSurfaceManagerProvider;

    public DaggerCameraAppComponent$UseCaseCameraComponentImpl(DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl, DaggerCameraAppComponent$CameraComponentImpl daggerCameraAppComponent$CameraComponentImpl, UseCaseCameraConfig useCaseCameraConfig) {
        this.useCaseCameraConfig = useCaseCameraConfig;
        this.provideUseCaseGraphContextProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 1));
        this.provideSessionProcessorProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 2));
        this.captureConfigAdapterProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 7));
        this.useCaseCameraStateProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 8));
        this.capturePipelineImplProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 6));
        this.capturePipelineTorchCorrectionProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 9));
        this.provideCapturePipelineProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 5));
        this.provideSessionConfigAdapterProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 11));
        this.useCaseSurfaceManagerProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 10));
        this.useCaseCameraRequestControlImplProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 4));
        this.deferredUseCaseCameraRequestControlProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 3));
        this.useCaseCameraImplProvider = DoubleCheck.provider(new SharingConfig(daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, this, 0));
    }
}
