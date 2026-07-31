package androidx.camera.camera2.compat.workaround;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CapturePipelineTorchCorrection implements CapturePipeline {
    public static final boolean isEnabled;
    public final SynchronizedLazyImpl capturePipelineImpl$delegate;
    public final Provider capturePipelineImplProvider;

    static {
        isEnabled = DeviceQuirks.getAll().get(TorchIsClosedAfterImageCapturingQuirk.class) != null;
    }

    public CapturePipelineTorchCorrection(CameraPipeCameraProperties cameraPipeCameraProperties, Provider provider, UseCaseThreads useCaseThreads, TorchControl torchControl) {
        cameraPipeCameraProperties.getClass();
        provider.getClass();
        useCaseThreads.getClass();
        torchControl.getClass();
        this.capturePipelineImplProvider = provider;
        new SynchronizedLazyImpl(new CapturePipelineImpl$$ExternalSyntheticLambda1(cameraPipeCameraProperties, 1));
        this.capturePipelineImpl$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(6, this));
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public final void setTemplate(int i) {
        ((CapturePipelineImpl) this.capturePipelineImpl$delegate.getValue()).getClass();
    }
}
