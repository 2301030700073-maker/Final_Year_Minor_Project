package androidx.camera.camera2.impl;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.SnackbarHostKt$animatedScale$1$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Provider;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeferredUseCaseCameraRequestControl implements UseCaseCameraRequestControl {
    public volatile UseCaseCameraRequestControlImpl impl;
    public final Provider implProvider;
    public final AtomicBoolean isClosed;
    public final UseCaseThreads threads;

    public DeferredUseCaseCameraRequestControl(Provider provider, UseCaseThreads useCaseThreads) {
        provider.getClass();
        useCaseThreads.getClass();
        this.implProvider = provider;
        this.threads = useCaseThreads;
        this.isClosed = new AtomicBoolean(false);
    }

    public static final UseCaseCameraRequestControlImpl access$getOrCreateImpl(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl) {
        if (deferredUseCaseCameraRequestControl.isClosed.get()) {
            throw new CancellationException("UseCaseCameraRequestControl is closed");
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = deferredUseCaseCameraRequestControl.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl;
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl2 = (UseCaseCameraRequestControlImpl) deferredUseCaseCameraRequestControl.implProvider.get();
        if (deferredUseCaseCameraRequestControl.isClosed.get()) {
            useCaseCameraRequestControlImpl2.close();
            throw new CancellationException("UseCaseCameraRequestControl closed during initialization");
        }
        deferredUseCaseCameraRequestControl.impl = useCaseCameraRequestControlImpl2;
        useCaseCameraRequestControlImpl2.getClass();
        return useCaseCameraRequestControlImpl2;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Object awaitSurfaceSetup(SuspendLambda suspendLambda) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.awaitSurfaceSetup(suspendLambda) : JobKt.withContext(JobKt.from(this.threads.sequentialExecutor), new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(this, null, 1), suspendLambda);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred cancelFocusAndMeteringAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl.cancelFocusAndMeteringAsync();
        }
        return JobKt.async$default(this.threads.sequentialScope, null, null, new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(this, null, 2), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final void close() {
        if (this.isClosed.getAndSet(true)) {
            return;
        }
        JobKt.launch$default(this.threads.sequentialScope, null, null, new WakeLock$release$2((Continuation) null, this, 2), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred removeParametersAsync(List list) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.removeParametersAsync(list) : JobKt.async$default(this.threads.sequentialScope, null, null, new RippleNode$onAttach$1(this, (Continuation) null, list), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred setParametersAsync(Map map, Config.OptionPriority optionPriority) {
        optionPriority.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl.setParametersAsync(map, optionPriority);
        }
        return JobKt.async$default(this.threads.sequentialScope, null, null, new DraggableNode$drag$2(this, (Continuation) null, map, optionPriority, 2), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* renamed from: setTorchOffAsync-MtizInI, reason: not valid java name */
    public final Deferred mo21setTorchOffAsyncMtizInI(int i) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.mo21setTorchOffAsyncMtizInI(i) : JobKt.async$default(this.threads.sequentialScope, null, null, new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(this, (Continuation) null, i), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred setTorchOnAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl.setTorchOnAsync();
        }
        return JobKt.async$default(this.threads.sequentialScope, null, null, new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(this, null, 0), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred submitParameters(Map map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        type.getClass();
        optionPriority.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.submitParameters(map, type, optionPriority) : JobKt.async$default(this.threads.sequentialScope, null, null, new NavHostKt$NavHost$29$1(this, (Continuation) null, map, type, optionPriority, 1), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred updateCamera2ConfigAsync(Camera2ImplConfig camera2ImplConfig, Map map) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl.updateCamera2ConfigAsync(camera2ImplConfig, map);
        }
        return JobKt.async$default(this.threads.sequentialScope, null, null, new DraggableNode$drag$2(this, (Continuation) null, camera2ImplConfig, map, 3), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred updateRepeatingRequestAsync(LinkedHashSet linkedHashSet, boolean z) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.updateRepeatingRequestAsync(linkedHashSet, z) : JobKt.async$default(this.threads.sequentialScope, null, null, new SnackbarHostKt$animatedScale$1$1(this, (Continuation) null, z, linkedHashSet), 3);
    }
}
