package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.datastore.preferences.protobuf.Utf8;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraImpl {
    public final Provider capturePipelineProvider;
    public final AtomicBoolean closed;
    public final int debugId;
    public final UseCaseCameraRequestControl requestControl;
    public final SynchronizedLazyImpl sessionConfigAdapter$delegate;
    public final Provider sessionConfigAdapterProvider;
    public final UseCaseThreads threads;
    public final UseCaseGraphContext useCaseGraphContext;
    public final SynchronizedLazyImpl useCaseSurfaceManager$delegate;
    public final Provider useCaseSurfaceManagerProvider;

    public UseCaseCameraImpl(UseCaseGraphContext useCaseGraphContext, UseCaseThreads useCaseThreads, UseCaseCameraRequestControl useCaseCameraRequestControl, Provider provider, Provider provider2, Provider provider3) {
        useCaseGraphContext.getClass();
        useCaseThreads.getClass();
        useCaseCameraRequestControl.getClass();
        provider.getClass();
        provider2.getClass();
        provider3.getClass();
        this.useCaseGraphContext = useCaseGraphContext;
        this.threads = useCaseThreads;
        this.requestControl = useCaseCameraRequestControl;
        this.useCaseSurfaceManagerProvider = provider;
        this.sessionConfigAdapterProvider = provider2;
        this.capturePipelineProvider = provider3;
        AtomicInt atomicInt = UseCaseCameraKt.useCaseCameraIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
        final int i = 0;
        this.closed = AtomicFU.atomic(false);
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Configured " + this);
        }
        this.useCaseSurfaceManager$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                UseCaseCameraImpl useCaseCameraImpl = this.f$0;
                switch (i2) {
                    case 0:
                        return (UseCaseSurfaceManager) useCaseCameraImpl.useCaseSurfaceManagerProvider.get();
                    case 1:
                        return (SessionConfigAdapter) useCaseCameraImpl.sessionConfigAdapterProvider.get();
                    default:
                        return (CapturePipeline) useCaseCameraImpl.capturePipelineProvider.get();
                }
            }
        });
        final int i2 = 1;
        this.sessionConfigAdapter$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                UseCaseCameraImpl useCaseCameraImpl = this.f$0;
                switch (i22) {
                    case 0:
                        return (UseCaseSurfaceManager) useCaseCameraImpl.useCaseSurfaceManagerProvider.get();
                    case 1:
                        return (SessionConfigAdapter) useCaseCameraImpl.sessionConfigAdapterProvider.get();
                    default:
                        return (CapturePipeline) useCaseCameraImpl.capturePipelineProvider.get();
                }
            }
        });
        final int i3 = 2;
        new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                UseCaseCameraImpl useCaseCameraImpl = this.f$0;
                switch (i22) {
                    case 0:
                        return (UseCaseSurfaceManager) useCaseCameraImpl.useCaseSurfaceManagerProvider.get();
                    case 1:
                        return (SessionConfigAdapter) useCaseCameraImpl.sessionConfigAdapterProvider.get();
                    default:
                        return (CapturePipeline) useCaseCameraImpl.capturePipelineProvider.get();
                }
            }
        });
    }

    public final String toString() {
        return "UseCaseCamera-" + this.debugId;
    }
}
