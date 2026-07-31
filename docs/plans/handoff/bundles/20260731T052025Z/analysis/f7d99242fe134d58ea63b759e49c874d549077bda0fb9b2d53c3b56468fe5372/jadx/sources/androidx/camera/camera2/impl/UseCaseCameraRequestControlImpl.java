package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraState;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.Config;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.TooltipStateImpl$show$2;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import androidx.datastore.core.FileReadScope$readData$2;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.work.Data;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;
import kotlin.UIntArray;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraRequestControlImpl implements UseCaseCameraRequestControl {
    public static final CompletableDeferredImpl canceledResult;
    public static final CompletableDeferredImpl submitFailedResult = JobKt.CompletableDeferred(new Result3A(4, null));
    public final CameraXConfig cameraXConfig;
    public final SynchronizedLazyImpl capturePipeline$delegate;
    public final Provider capturePipelineProvider;
    public volatile boolean closed;
    public final LinkedHashMap infoBundleMap;
    public final UseCaseThreads threads;
    public final SynchronizedLazyImpl useCaseCameraState$delegate;
    public final Provider useCaseCameraStateProvider;
    public final UseCaseGraphContext useCaseGraphContext;
    public final SynchronizedLazyImpl useCaseSurfaceManager$delegate;
    public final Provider useCaseSurfaceManagerProvider;

    static {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        completableDeferredImpl.cancel(null);
        canceledResult = completableDeferredImpl;
    }

    public UseCaseCameraRequestControlImpl(Provider provider, Provider provider2, UseCaseGraphContext useCaseGraphContext, Provider provider3, UseCaseThreads useCaseThreads, CameraXConfig cameraXConfig) {
        provider.getClass();
        provider2.getClass();
        useCaseGraphContext.getClass();
        provider3.getClass();
        useCaseThreads.getClass();
        this.capturePipelineProvider = provider;
        this.useCaseCameraStateProvider = provider2;
        this.useCaseGraphContext = useCaseGraphContext;
        this.useCaseSurfaceManagerProvider = provider3;
        this.threads = useCaseThreads;
        this.cameraXConfig = cameraXConfig;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Configured " + this);
        }
        final int i = 0;
        this.capturePipeline$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraRequestControlImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.f$0;
                switch (i2) {
                    case 0:
                        return (CapturePipeline) useCaseCameraRequestControlImpl.capturePipelineProvider.get();
                    case 1:
                        return (UseCaseSurfaceManager) useCaseCameraRequestControlImpl.useCaseSurfaceManagerProvider.get();
                    default:
                        return (UseCaseCameraState) useCaseCameraRequestControlImpl.useCaseCameraStateProvider.get();
                }
            }
        });
        final int i2 = 1;
        this.useCaseSurfaceManager$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraRequestControlImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.f$0;
                switch (i22) {
                    case 0:
                        return (CapturePipeline) useCaseCameraRequestControlImpl.capturePipelineProvider.get();
                    case 1:
                        return (UseCaseSurfaceManager) useCaseCameraRequestControlImpl.useCaseSurfaceManagerProvider.get();
                    default:
                        return (UseCaseCameraState) useCaseCameraRequestControlImpl.useCaseCameraStateProvider.get();
                }
            }
        });
        final int i3 = 2;
        this.useCaseCameraState$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ UseCaseCameraRequestControlImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.f$0;
                switch (i22) {
                    case 0:
                        return (CapturePipeline) useCaseCameraRequestControlImpl.capturePipelineProvider.get();
                    case 1:
                        return (UseCaseSurfaceManager) useCaseCameraRequestControlImpl.useCaseSurfaceManagerProvider.get();
                    default:
                        return (UseCaseCameraState) useCaseCameraRequestControlImpl.useCaseCameraStateProvider.get();
                }
            }
        });
        this.infoBundleMap = new LinkedHashMap();
    }

    public static final Object access$setParametersInternal(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, Map map, Config.OptionPriority optionPriority, SuspendLambda suspendLambda) {
        LinkedHashMap linkedHashMap = useCaseCameraRequestControlImpl.infoBundleMap;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "UseCaseCameraRequestControlImpl#setParametersAsync: [" + type + "] values = " + map + ", optionPriority = " + optionPriority);
        }
        Object obj = linkedHashMap.get(type);
        Preview.Builder builder = null;
        boolean z = false;
        boolean z2 = false;
        Object obj2 = obj;
        if (obj == null) {
            InfoBundle infoBundle = new InfoBundle(builder, (LinkedHashMap) (z2 ? 1 : 0), (RequestTemplate) (z ? 1 : 0), 15);
            linkedHashMap.put(type, infoBundle);
            obj2 = infoBundle;
        }
        InfoBundle infoBundle2 = (InfoBundle) obj2;
        Preview.Builder builder2 = new Preview.Builder(1);
        builder2.insertAllOptions(infoBundle2.options.mMutableConfig);
        optionPriority.getClass();
        for (Map.Entry entry : map.entrySet()) {
            CaptureRequest.Key key = (CaptureRequest.Key) entry.getKey();
            builder2.mMutableConfig.insertOption(Data.Companion.createCaptureRequestOption(key), optionPriority, entry.getValue());
        }
        linkedHashMap.put(type, new InfoBundle(builder2, MapsKt__MapsKt.toMutableMap(infoBundle2.tags), CollectionsKt.toMutableSet(infoBundle2.listeners), infoBundle2.template));
        return useCaseCameraRequestControlImpl.updateCameraStateAsync(merge(linkedHashMap), null, suspendLambda);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InfoBundle merge(LinkedHashMap linkedHashMap) {
        InfoBundle infoBundle = new InfoBundle((Preview.Builder) null, (LinkedHashMap) (0 == true ? 1 : 0), new RequestTemplate(1), 7);
        EnumEntriesList enumEntriesList = UseCaseCameraRequestControl.Type.$ENTRIES;
        enumEntriesList.getClass();
        UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
        while (iterator.hasNext()) {
            InfoBundle infoBundle2 = (InfoBundle) linkedHashMap.get((UseCaseCameraRequestControl.Type) iterator.next());
            if (infoBundle2 != null) {
                infoBundle.options.insertAllOptions(infoBundle2.options.mMutableConfig);
                infoBundle.tags.putAll(infoBundle2.tags);
                infoBundle.listeners.addAll(infoBundle2.listeners);
                RequestTemplate requestTemplate = infoBundle2.template;
                if (requestTemplate != null) {
                    infoBundle.template = new RequestTemplate(requestTemplate.value);
                }
            }
        }
        return infoBundle;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Object awaitSurfaceSetup(SuspendLambda suspendLambda) {
        UseCaseSurfaceManager useCaseSurfaceManager = (UseCaseSurfaceManager) this.useCaseSurfaceManager$delegate.getValue();
        useCaseSurfaceManager.getClass();
        return UseCaseSurfaceManager.awaitSetupCompletion$suspendImpl(useCaseSurfaceManager, suspendLambda);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred cancelFocusAndMeteringAsync() {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new FileReadScope$readData$2(this, 0 == true ? 1 : 0, 1));
        return runOnSequential == null ? submitFailedResult : runOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final void close() {
        this.closed = true;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "UseCaseCameraRequestControl: closed");
        }
        UseCaseCameraState useCaseCameraState = (UseCaseCameraState) this.useCaseCameraState$delegate.getValue();
        synchronized (useCaseCameraState.lock) {
            try {
                if (useCaseCameraState.updating) {
                    useCaseCameraState.updating = false;
                    CompletableDeferredImpl completableDeferredImpl = useCaseCameraState.updateSignal;
                    if (completableDeferredImpl != null) {
                        completableDeferredImpl.completeExceptionally(new CancellationException("UseCaseCameraState closed"));
                    }
                    useCaseCameraState.updateSignal = null;
                }
                while (!useCaseCameraState.updateSignals.isEmpty()) {
                    ((UseCaseCameraState.RequestSignal) useCaseCameraState.updateSignals.removeFirst()).signal.completeExceptionally(new CancellationException("UseCaseCameraState closed"));
                    useCaseCameraState.pendingSignalCount.decrementAndGet();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred removeParametersAsync(List list) {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new FileReadScope$readData$2(this, list, 0 == true ? 1 : 0, 2));
        return runOnSequential == null ? canceledResult : runOnSequential;
    }

    public final CompletableDeferredImpl runOnSequential(Function1 function1) {
        UseCaseThreads useCaseThreads = this.threads;
        useCaseThreads.getClass();
        CoroutineStart coroutineStart = Intrinsics.areEqual(useCaseThreads.isSequentialThread.get(), Boolean.TRUE) ? CoroutineStart.UNDISPATCHED : CoroutineStart.DEFAULT;
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        JobKt.launch$default(useCaseThreads.sequentialScope, null, coroutineStart, new RippleNode$onAttach$1(function1, completableDeferredImpl, null, 4), 1);
        return completableDeferredImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred setParametersAsync(Map map, Config.OptionPriority optionPriority) {
        optionPriority.getClass();
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new TooltipStateImpl$show$2(this, map, optionPriority, 0 == true ? 1 : 0, 1));
        return runOnSequential == null ? canceledResult : runOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* renamed from: setTorchOffAsync-MtizInI */
    public final Deferred mo21setTorchOffAsyncMtizInI(int i) {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this, i, null));
        return runOnSequential == null ? submitFailedResult : runOnSequential;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred setTorchOnAsync() {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new DataStoreImpl$doWithWriteFileLock$2(this, 0 == true ? 1 : 0, 1));
        return runOnSequential == null ? submitFailedResult : runOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred submitParameters(Map map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        type.getClass();
        optionPriority.getClass();
        if (this.closed) {
            return canceledResult;
        }
        if (Intrinsics.areEqual(this.threads.isSequentialThread.get(), Boolean.TRUE)) {
            return JobKt.async$default(this.threads.sequentialScope, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1(this, type, map, optionPriority, (Continuation) null, 2), 1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) Thread.currentThread().getName(), "Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: ");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred updateCamera2ConfigAsync(Camera2ImplConfig camera2ImplConfig, Map map) {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new TooltipStateImpl$show$2(this, camera2ImplConfig, map, 0 == true ? 1 : 0, 2));
        return runOnSequential == null ? canceledResult : runOnSequential;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateCameraStateAsync(androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.InfoBundle r10, java.util.LinkedHashSet r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1
            if (r0 == 0) goto L14
            r0 = r12
            androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1 r0 = (androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1 r0 = new androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1
            r0.<init>(r9, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r7.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lb9
        L2b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r2
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            boolean r12 = r9.closed
            if (r12 != 0) goto Lc1
            androidx.camera.core.CameraXConfig r12 = r9.cameraXConfig
            androidx.camera.core.impl.AutoValue_Config_Option r1 = androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt.OPTION_CAPTURE_REQUEST_CONFIGURATOR
            androidx.camera.core.impl.OptionsBundle r12 = r12.mConfig
            androidx.camera.core.impl.AutoValue_Config_Option r1 = androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt.OPTION_CAPTURE_REQUEST_CONFIGURATOR
            java.lang.Object r12 = r12.retrieveOption(r1, r2)
            if (r12 != 0) goto Lbd
            kotlin.SynchronizedLazyImpl r12 = r9.capturePipeline$delegate
            java.lang.Object r12 = r12.getValue()
            androidx.camera.camera2.impl.CapturePipeline r12 = (androidx.camera.camera2.impl.CapturePipeline) r12
            androidx.camera.camera2.pipe.RequestTemplate r1 = r10.template
            r1.getClass()
            int r1 = r1.value
            r2 = -1
            if (r1 == r2) goto L60
            androidx.camera.camera2.pipe.RequestTemplate r1 = r10.template
            r1.getClass()
            int r1 = r1.value
            goto L61
        L60:
            r1 = r3
        L61:
            r12.setTemplate(r1)
            kotlin.SynchronizedLazyImpl r9 = r9.useCaseCameraState$delegate
            java.lang.Object r9 = r9.getValue()
            r1 = r9
            androidx.camera.camera2.impl.UseCaseCameraState r1 = (androidx.camera.camera2.impl.UseCaseCameraState) r1
            androidx.camera.core.Preview$Builder r9 = r10.options
            androidx.camera.camera2.impl.Camera2ImplConfig r9 = r9.build()
            java.util.LinkedHashMap r2 = androidx.work.Data.Companion.toParameters(r9)
            androidx.camera.camera2.pipe.Metadata$Key r9 = androidx.camera.camera2.impl.TagsKt.CAMERAX_TAG_BUNDLE
            androidx.camera.core.impl.MutableTagBundle r12 = androidx.camera.core.impl.MutableTagBundle.create()
            java.util.Map r4 = r10.tags
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L87:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto La3
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r6 = r5.getKey()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r5 = r5.getValue()
            android.util.ArrayMap r8 = r12.mTagMap
            r8.put(r6, r5)
            goto L87
        La3:
            java.util.Map r9 = java.util.Collections.singletonMap(r9, r12)
            r9.getClass()
            androidx.camera.camera2.pipe.RequestTemplate r5 = r10.template
            java.util.Set r6 = r10.listeners
            r7.label = r3
            r3 = r9
            r4 = r11
            java.lang.Object r12 = r1.m24updateAsyncTp9XwKQ(r2, r3, r4, r5, r6, r7)
            if (r12 != r0) goto Lb9
            return r0
        Lb9:
            r2 = r12
            kotlinx.coroutines.Deferred r2 = (kotlinx.coroutines.Deferred) r2
            goto Lc1
        Lbd:
            androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0.m()
            return r2
        Lc1:
            if (r2 != 0) goto Lc6
            kotlinx.coroutines.CompletableDeferredImpl r9 = androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.canceledResult
            return r9
        Lc6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.updateCameraStateAsync(androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$InfoBundle, java.util.LinkedHashSet, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public final Deferred updateRepeatingRequestAsync(LinkedHashSet linkedHashSet, boolean z) {
        CompletableDeferredImpl runOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(linkedHashSet, z, this, null));
        return runOnSequential == null ? canceledResult : runOnSequential;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InfoBundle {
        public final Set listeners;
        public final Preview.Builder options;
        public final Map tags;
        public RequestTemplate template;

        public /* synthetic */ InfoBundle(Preview.Builder builder, LinkedHashMap linkedHashMap, RequestTemplate requestTemplate, int i) {
            this((i & 1) != 0 ? new Preview.Builder(1) : builder, (i & 2) != 0 ? new LinkedHashMap() : linkedHashMap, new LinkedHashSet(), (i & 8) != 0 ? null : requestTemplate);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InfoBundle)) {
                return false;
            }
            InfoBundle infoBundle = (InfoBundle) obj;
            return Intrinsics.areEqual(this.options, infoBundle.options) && Intrinsics.areEqual(this.tags, infoBundle.tags) && Intrinsics.areEqual(this.listeners, infoBundle.listeners) && Intrinsics.areEqual(this.template, infoBundle.template);
        }

        public final int hashCode() {
            int hashCode = (this.listeners.hashCode() + ((this.tags.hashCode() + (this.options.hashCode() * 31)) * 31)) * 31;
            RequestTemplate requestTemplate = this.template;
            return hashCode + (requestTemplate == null ? 0 : requestTemplate.value);
        }

        public final String toString() {
            return "InfoBundle(options=" + this.options + ", tags=" + this.tags + ", listeners=" + this.listeners + ", template=" + this.template + ')';
        }

        public InfoBundle(Preview.Builder builder, Map map, Set set, RequestTemplate requestTemplate) {
            builder.getClass();
            map.getClass();
            this.options = builder;
            this.tags = map;
            this.listeners = set;
            this.template = requestTemplate;
        }
    }
}
