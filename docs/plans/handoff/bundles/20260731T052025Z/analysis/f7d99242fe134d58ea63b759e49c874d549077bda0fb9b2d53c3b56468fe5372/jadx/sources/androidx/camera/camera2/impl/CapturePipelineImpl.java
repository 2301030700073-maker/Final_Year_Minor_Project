package androidx.camera.camera2.impl;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.impl.TagBundle;
import java.util.Map;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CapturePipelineImpl implements CapturePipeline {
    public final Provider useCaseCameraStateProvider;

    public CapturePipelineImpl(CaptureConfigAdapter captureConfigAdapter, FlashControl flashControl, TorchControl torchControl, VideoUsageControl videoUsageControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, UseTorchAsFlash useTorchAsFlash, CameraPipeCameraProperties cameraPipeCameraProperties, Provider provider, UseCaseGraphContext useCaseGraphContext) {
        captureConfigAdapter.getClass();
        flashControl.getClass();
        torchControl.getClass();
        videoUsageControl.getClass();
        useCaseThreads.getClass();
        comboRequestListener.getClass();
        cameraPipeCameraProperties.getClass();
        provider.getClass();
        useCaseGraphContext.getClass();
        this.useCaseCameraStateProvider = provider;
        new SynchronizedLazyImpl(new CapturePipelineImpl$$ExternalSyntheticLambda1(cameraPipeCameraProperties, 0));
        new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(8, this));
        new RequestMetadata() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1
            public final Request request = new Request(EmptyList.INSTANCE, null, null, null, null, 62);

            @Override // androidx.camera.camera2.pipe.Metadata
            public final Object get(Metadata.Key key) {
                key.getClass();
                return null;
            }

            @Override // androidx.camera.camera2.pipe.Metadata
            public final Object getOrDefault(Metadata.Key key, TagBundle tagBundle) {
                key.getClass();
                return tagBundle;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public final boolean getRepeating() {
                return true;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public final Request getRequest() {
                return this.request;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            /* renamed from: getRequestNumber-my6kx4g, reason: not valid java name */
            public final long mo20getRequestNumbermy6kx4g() {
                return 0L;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public final Map getStreams() {
                return EmptyMap.INSTANCE;
            }

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public final Object unwrapAs(ClassReference classReference) {
                return null;
            }
        };
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public final void setTemplate(int i) {
    }
}
