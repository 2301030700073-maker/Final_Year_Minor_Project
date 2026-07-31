package androidx.camera.core.impl;

import androidx.biometric.BiometricPrompt;
import androidx.camera.core.impl.CameraConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AdapterCameraInfo extends ForwardingCameraInfo {
    public final CameraConfig mCameraConfig;
    public final CameraInfoInternal mCameraInfo;

    public AdapterCameraInfo(CameraInfoInternal cameraInfoInternal, CameraConfig cameraConfig) {
        super(cameraInfoInternal);
        this.mCameraInfo = cameraInfoInternal;
        this.mCameraConfig = cameraConfig;
        BiometricPrompt biometricPrompt = (BiometricPrompt) cameraConfig;
        biometricPrompt.getSessionProcessor();
        int i = CameraConfig.CC.$r8$clinit;
        AutoValue_Config_Option autoValue_Config_Option = CameraConfig.OPTION_POSTVIEW_SUPPORTED;
        Boolean bool = Boolean.FALSE;
        ((Boolean) ((OptionsBundle) biometricPrompt.getConfig()).retrieveOption(autoValue_Config_Option, bool)).getClass();
        ((Boolean) ((OptionsBundle) biometricPrompt.getConfig()).retrieveOption(CameraConfig.OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED, bool)).getClass();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final CameraInfoInternal getImplementation() {
        return this.mCameraInfo;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final boolean isPreviewStabilizationSupported() {
        return this.mCameraInfoInternal.isPreviewStabilizationSupported();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final boolean isVideoStabilizationSupported() {
        return this.mCameraInfoInternal.isVideoStabilizationSupported();
    }
}
