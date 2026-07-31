package androidx.camera.core.streamsharing;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AdapterCameraControl;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.ForwardingCameraInfo;
import androidx.camera.core.impl.Observable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VirtualCamera implements CameraInternal {
    public final CameraInternal mParentCamera;
    public final VirtualCameraAdapter mStateChangeCallback;
    public final AdapterCameraControl mVirtualCameraControl;
    public final VirtualCameraInfo mVirtualCameraInfo;

    public VirtualCamera(CameraInternal cameraInternal, VirtualCameraAdapter virtualCameraAdapter, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0) {
        this.mParentCamera = cameraInternal;
        this.mStateChangeCallback = virtualCameraAdapter;
        this.mVirtualCameraControl = new AdapterCameraControl(cameraInternal.getCameraControlInternal());
        this.mVirtualCameraInfo = new VirtualCameraInfo(cameraInternal.getCameraInfoInternal());
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void attachUseCases(Collection collection) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void detachUseCases(ArrayList arrayList) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraControlInternal getCameraControlInternal() {
        return this.mVirtualCameraControl;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public final CameraInfo getCameraInfo() {
        return getCameraInfoInternal();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraInfoInternal getCameraInfoInternal() {
        return this.mVirtualCameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final Observable getCameraState() {
        return this.mParentCamera.getCameraState();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraConfig getExtendedConfig() {
        return CameraConfigs.DEFAULT_CAMERA_CONFIG;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final boolean getHasTransform() {
        return false;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final boolean isFrontFacing() {
        return ((ForwardingCameraInfo) getCameraInfo()).getLensFacing() == 0;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ boolean isRemoved() {
        return false;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void onUseCaseActive(UseCase useCase) {
        Validate.checkMainThread();
        this.mStateChangeCallback.onUseCaseActive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void onUseCaseInactive(UseCase useCase) {
        Validate.checkMainThread();
        this.mStateChangeCallback.onUseCaseInactive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void onUseCaseReset(UseCase useCase) {
        Validate.checkMainThread();
        this.mStateChangeCallback.onUseCaseReset(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void onUseCaseUpdated(UseCase useCase) {
        Validate.checkMainThread();
        this.mStateChangeCallback.onUseCaseUpdated(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final ListenableFuture release() {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ void onRemoved() {
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ void setActiveResumingMode(boolean z) {
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ void setExtendedConfig(CameraConfig cameraConfig) {
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ void setPrimary(boolean z) {
    }
}
