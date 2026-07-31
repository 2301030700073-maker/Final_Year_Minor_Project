package androidx.camera.camera2.impl;

import android.content.Context;
import android.media.MediaCodec;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$UseCaseCameraComponentImpl;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.impl.MeteringRepeating;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.sqlite.SQLite;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.ui.messagelist.MessageListFragment$onCreate$2;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseManager {
    public volatile DaggerCameraAppComponent$UseCaseCameraComponentImpl _activeComponent;
    public boolean activeResumeEnabled;
    public final LinkedHashSet activeUseCases;
    public final Set allControls;
    public final LinkedHashSet attachedUseCases;
    public final CardView.AnonymousClass1 builder;
    public final CameraCoordinatorAdapter cameraCoordinator;
    public final CameraGraphConfigProvider cameraGraphConfigProvider;
    public final Provider cameraInfoInternal;
    public final Provider cameraInternal;
    public final CameraPipeImpl cameraPipe;
    public final CameraStateAdapter cameraStateAdapter;
    public final CameraXConfig cameraXConfig;
    public final ArrayList closingCameraJobs;
    public final TorchControl$$ExternalSyntheticLambda1 defaultCameraGraphFactory;
    public final LocalFolder.AnonymousClass12 dynamicRangeResolver;
    public boolean isPrimary;
    public final Object lock;
    public final LowLightBoostControl lowLightBoostControl;
    public final MeteringRepeating meteringRepeating;
    public final LinkedHashSet pendingUseCasesToNotifyCameraControlReady;
    public boolean shouldCreateCameraGraphImmediately;
    public final SupportedSurfaceCombination supportedSurfaceCombination;
    public final ZslControl zslControl;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface RunningUseCasesChangeListener {
        void onRunningUseCasesChanged(LinkedHashSet linkedHashSet);
    }

    public UseCaseManager(CameraPipeImpl cameraPipeImpl, CameraCoordinatorAdapter cameraCoordinatorAdapter, CardView.AnonymousClass1 anonymousClass1, ZslControl zslControl, LowLightBoostControl lowLightBoostControl, Set set, Camera2CameraControl camera2CameraControl, CameraStateAdapter cameraStateAdapter, ConnectionPool connectionPool, Provider provider, Provider provider2, EncoderProfilesProvider encoderProfilesProvider, CameraPipeCameraProperties cameraPipeCameraProperties, CameraXConfig cameraXConfig, CameraGraphConfigProvider cameraGraphConfigProvider, Context context, DisplayInfoManager displayInfoManager) {
        cameraCoordinatorAdapter.getClass();
        zslControl.getClass();
        lowLightBoostControl.getClass();
        set.getClass();
        camera2CameraControl.getClass();
        cameraStateAdapter.getClass();
        connectionPool.getClass();
        provider.getClass();
        provider2.getClass();
        encoderProfilesProvider.getClass();
        cameraPipeCameraProperties.getClass();
        cameraGraphConfigProvider.getClass();
        this.cameraPipe = cameraPipeImpl;
        this.cameraCoordinator = cameraCoordinatorAdapter;
        this.builder = anonymousClass1;
        this.zslControl = zslControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraInternal = connectionPool;
        this.cameraInfoInternal = provider2;
        this.cameraXConfig = cameraXConfig;
        this.cameraGraphConfigProvider = cameraGraphConfigProvider;
        this.lock = new Object();
        this.attachedUseCases = new LinkedHashSet();
        this.activeUseCases = new LinkedHashSet();
        this.shouldCreateCameraGraphImmediately = true;
        this.isPrimary = true;
        this.pendingUseCasesToNotifyCameraControlReady = new LinkedHashSet();
        this.meteringRepeating = new MeteringRepeating(cameraPipeCameraProperties, new MeteringRepeating.MeteringRepeatingConfig(), displayInfoManager);
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        this.supportedSurfaceCombination = new SupportedSurfaceCombination(context, cameraMetadata, encoderProfilesProvider, FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY);
        this.dynamicRangeResolver = new LocalFolder.AnonymousClass12(cameraMetadata);
        this.defaultCameraGraphFactory = new TorchControl$$ExternalSyntheticLambda1(2, this);
        this.closingCameraJobs = new ArrayList();
        Set mutableSet = CollectionsKt.toMutableSet(set);
        mutableSet.add(camera2CameraControl);
        this.allControls = mutableSet;
    }

    public final void activate(UseCase useCase) {
        useCase.getClass();
        synchronized (this.lock) {
            if (this.activeUseCases.add(useCase)) {
                refreshRunningUseCases();
            }
        }
    }

    public final boolean addOrRemoveRepeatingUseCase(LinkedHashSet linkedHashSet) {
        if (((Boolean) this.cameraXConfig.mConfig.retrieveOption(CameraXConfig.OPTION_REPEATING_STREAM_FORCED, Boolean.TRUE)).booleanValue() && !this.attachedUseCases.contains(this.meteringRepeating) && isMeteringRepeatingRequired(linkedHashSet)) {
            addRepeatingUseCase();
            return true;
        }
        if (!linkedHashSet.contains(this.meteringRepeating) || isMeteringRepeatingRequired(linkedHashSet)) {
            return false;
        }
        MeteringRepeating meteringRepeating = this.meteringRepeating;
        meteringRepeating.getClass();
        synchronized (this.lock) {
            if (this.activeUseCases.remove(meteringRepeating)) {
                refreshRunningUseCases();
            }
        }
        detach(IntOffsetKt.listOf(meteringRepeating));
        meteringRepeating.unbindFromCamera((CameraInternal) this.cameraInternal.get());
        return true;
    }

    public final void addRepeatingUseCase() {
        CameraInternal cameraInternal = (CameraInternal) this.cameraInternal.get();
        MeteringRepeating meteringRepeating = this.meteringRepeating;
        meteringRepeating.bindToCamera(cameraInternal, null, null, null);
        meteringRepeating.updateSuggestedStreamSpec(AutoValue_StreamSpec.builder(MeteringRepeatingKt.DEFAULT_PREVIEW_SIZE).build(), null);
        attach(IntOffsetKt.listOf(meteringRepeating));
        activate(meteringRepeating);
    }

    public final void attach(List list) {
        synchronized (this.lock) {
            if (list.isEmpty()) {
                if (Utf8.SafeProcessor.isWarnEnabled()) {
                    Log.w("CXCP", "Attach [] from " + this + " (Ignored)");
                }
                return;
            }
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "Attaching " + list + " from " + this);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!this.attachedUseCases.contains((UseCase) obj)) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((UseCase) it.next()).onSessionStart();
            }
            if (this.attachedUseCases.addAll(list) && !addOrRemoveRepeatingUseCase(CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases))) {
                updateZslDisabledByUseCaseConfigStatus();
                this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                refreshAttachedUseCases(this.attachedUseCases);
            }
            if (this.shouldCreateCameraGraphImmediately) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((UseCase) it2.next()).onCameraControlReady();
                }
            } else {
                this.pendingUseCasesToNotifyCameraControlReady.addAll(arrayList);
            }
        }
    }

    public final Object close(SuspendLambda suspendLambda) {
        List list;
        synchronized (this.lock) {
            closeCurrentUseCases();
            this.meteringRepeating.onUnbind();
            list = CollectionsKt.toList(this.closingCameraJobs);
        }
        Object joinAll = JobKt.joinAll(list, suspendLambda);
        return joinAll == CoroutineSingletons.COROUTINE_SUSPENDED ? joinAll : Unit.INSTANCE;
    }

    public final void closeCurrentUseCases() {
        Job CompletableDeferred;
        UseCaseCameraImpl camera = getCamera();
        this._activeComponent = null;
        CameraCoordinatorAdapter cameraCoordinatorAdapter = this.cameraCoordinator;
        CameraInfo cameraInfo = (CameraInfo) this.cameraInfoInternal.get();
        cameraCoordinatorAdapter.getClass();
        cameraInfo.getClass();
        synchronized (cameraCoordinatorAdapter.lock) {
            try {
                if (cameraCoordinatorAdapter.concurrentModeOn) {
                    ArrayList arrayList = cameraCoordinatorAdapter.pendingCameraIds;
                    CameraMetadata cameraMetadata = (CameraMetadata) SQLite.unwrapAs(cameraInfo, Reflection.getOrCreateKotlinClass(CameraMetadata.class));
                    String str = cameraMetadata != null ? ((Camera2CameraMetadata) cameraMetadata).camera : null;
                    CameraId cameraId = str != null ? new CameraId(str) : null;
                    if (cameraId == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    arrayList.remove(cameraId.value);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (camera != null) {
            if (camera.closed.compareAndSet()) {
                camera.requestControl.close();
                CompletableDeferred = JobKt.launch$default(camera.threads.sequentialScope, null, null, new ThumbNode$onAttach$1(null, camera), 3);
            } else {
                CompletableDeferred = JobKt.CompletableDeferred(Unit.INSTANCE);
            }
            this.closingCameraJobs.add(CompletableDeferred);
            CompletableDeferred.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(6, this, CompletableDeferred));
        }
        getSessionProcessor$camera_camera2();
    }

    public final void detach(List list) {
        synchronized (this.lock) {
            if (list.isEmpty()) {
                if (Utf8.SafeProcessor.isWarnEnabled()) {
                    Log.w("CXCP", "Detaching [] from " + this + " (Ignored)");
                }
                return;
            }
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "Detaching " + list + " from " + this);
            }
            this.activeUseCases.removeAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                UseCase useCase = (UseCase) it.next();
                if (this.attachedUseCases.contains(useCase)) {
                    useCase.onSessionStop();
                }
            }
            if (this.attachedUseCases.removeAll(list)) {
                if (addOrRemoveRepeatingUseCase(CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases))) {
                    return;
                }
                if (this.attachedUseCases.isEmpty()) {
                    this.zslControl.setZslDisabledByUserCaseConfig(false);
                    this.lowLightBoostControl.onSessionConfigChanged(EmptyList.INSTANCE);
                } else {
                    updateZslDisabledByUseCaseConfigStatus();
                    this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                }
                refreshAttachedUseCases(this.attachedUseCases);
            }
            this.pendingUseCasesToNotifyCameraControlReady.removeAll(list);
        }
    }

    public final UseCaseCameraImpl getCamera() {
        DaggerCameraAppComponent$UseCaseCameraComponentImpl daggerCameraAppComponent$UseCaseCameraComponentImpl = this._activeComponent;
        if (daggerCameraAppComponent$UseCaseCameraComponentImpl != null) {
            return (UseCaseCameraImpl) daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraImplProvider.get();
        }
        return null;
    }

    public final int getCameraMode() {
        synchronized (this.lock) {
            return this.cameraCoordinator.getCameraOperatingMode() == 2 ? 1 : 0;
        }
    }

    public final void getSessionProcessor$camera_camera2() {
        synchronized (this.lock) {
        }
    }

    public final boolean isMeteringRepeatingRequired(LinkedHashSet linkedHashSet) {
        boolean z;
        SupportedSurfaceCombination supportedSurfaceCombination;
        int i;
        boolean checkSupported;
        UseCaseConfig useCaseConfig;
        List listOf;
        Object retrieveOption;
        if (((Boolean) this.cameraXConfig.mConfig.retrieveOption(CameraXConfig.OPTION_REPEATING_STREAM_FORCED, Boolean.TRUE)).booleanValue() && !linkedHashSet.isEmpty()) {
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                UseCase useCase = (UseCase) it.next();
                MeteringRepeating meteringRepeating = this.meteringRepeating;
                if (!Intrinsics.areEqual(useCase, meteringRepeating)) {
                    List surfaces = useCase.mAttachedSessionConfig.getSurfaces();
                    surfaces.getClass();
                    if (!surfaces.isEmpty()) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : this.attachedUseCases) {
                            if (!Intrinsics.areEqual((UseCase) obj, meteringRepeating)) {
                                arrayList.add(obj);
                            }
                        }
                        if (!arrayList.isEmpty() && !arrayList.isEmpty()) {
                            SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                validatingBuilder.add(((UseCase) it2.next()).mAttachedSessionConfig);
                            }
                            SessionConfig build = validatingBuilder.build();
                            List unmodifiableList = DesugarCollections.unmodifiableList(build.mRepeatingCaptureConfig.mSurfaces);
                            unmodifiableList.getClass();
                            List surfaces2 = build.getSurfaces();
                            surfaces2.getClass();
                            if (!surfaces2.isEmpty()) {
                                if (!surfaces2.isEmpty()) {
                                    Iterator it3 = surfaces2.iterator();
                                    while (it3.hasNext()) {
                                        if (!Intrinsics.areEqual(((DeferrableSurface) it3.next()).mContainerClass, MediaCodec.class)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                                z = true;
                                boolean isEmpty = unmodifiableList.isEmpty();
                                if (z || isEmpty) {
                                    if (meteringRepeating.getAttachedSurfaceResolution() == null) {
                                        meteringRepeating.updateSuggestedStreamSpec(AutoValue_StreamSpec.builder(MeteringRepeatingKt.DEFAULT_PREVIEW_SIZE).build(), null);
                                    }
                                    ArrayList arrayList2 = new ArrayList();
                                    Iterator it4 = arrayList.iterator();
                                    while (true) {
                                        boolean hasNext = it4.hasNext();
                                        supportedSurfaceCombination = this.supportedSurfaceCombination;
                                        if (!hasNext) {
                                            break;
                                        }
                                        UseCase useCase2 = (UseCase) it4.next();
                                        Size attachedSurfaceResolution = useCase2.getAttachedSurfaceResolution();
                                        AutoValue_StreamSpec autoValue_StreamSpec = useCase2.mAttachedStreamSpec;
                                        if (attachedSurfaceResolution == null || autoValue_StreamSpec == null) {
                                            break;
                                        }
                                        SurfaceConfig transformSurfaceConfig = supportedSurfaceCombination.transformSurfaceConfig(getCameraMode(), useCase2.mCurrentConfig.getInputFormat(), attachedSurfaceResolution, useCase2.mCurrentConfig.getStreamUseCase());
                                        int inputFormat = useCase2.mCurrentConfig.getInputFormat();
                                        DynamicRange dynamicRange = autoValue_StreamSpec.dynamicRange;
                                        if (useCase2 instanceof StreamSharing) {
                                            UseCaseConfig useCaseConfig2 = ((StreamSharing) useCase2).mCurrentConfig;
                                            useCaseConfig2.getClass();
                                            retrieveOption = ((StreamSharingConfig) useCaseConfig2).getConfig().retrieveOption(StreamSharingConfig.OPTION_CAPTURE_TYPES);
                                            listOf = (List) retrieveOption;
                                            listOf.getClass();
                                        } else {
                                            listOf = IntOffsetKt.listOf(useCase2.mCurrentConfig.getCaptureType());
                                        }
                                        List list = listOf;
                                        Config config = autoValue_StreamSpec.implementationOptions;
                                        if (config == null) {
                                            config = MutableOptionsBundle.create();
                                        }
                                        arrayList2.add(new AutoValue_AttachedSurfaceInfo(transformSurfaceConfig, inputFormat, attachedSurfaceResolution, dynamicRange, list, config, autoValue_StreamSpec.sessionType, autoValue_StreamSpec.expectedFrameRateRange, useCase2.mCurrentConfig.isStrictFrameRateRequired(), useCase2.mCurrentConfig.getCustomMaxFrameRate(attachedSurfaceResolution)));
                                    }
                                    if (Utf8.SafeProcessor.isWarnEnabled()) {
                                        Log.w("CXCP", "Invalid surface resolution or stream spec is found.");
                                    }
                                    arrayList2.clear();
                                    if (arrayList2.isEmpty()) {
                                        checkSupported = false;
                                    } else {
                                        ArrayList arrayList3 = new ArrayList();
                                        Iterator it5 = arrayList.iterator();
                                        while (it5.hasNext()) {
                                            UseCase useCase3 = (UseCase) it5.next();
                                            List<DeferrableSurface> surfaces3 = useCase3.mAttachedSessionConfig.getSurfaces();
                                            surfaces3.getClass();
                                            for (DeferrableSurface deferrableSurface : surfaces3) {
                                                int cameraMode = getCameraMode();
                                                int inputFormat2 = useCase3.mCurrentConfig.getInputFormat();
                                                Size size = deferrableSurface.mPrescribedSize;
                                                size.getClass();
                                                arrayList3.add(supportedSurfaceCombination.transformSurfaceConfig(cameraMode, inputFormat2, size, useCase3.mCurrentConfig.getStreamUseCase()));
                                            }
                                        }
                                        int cameraMode2 = getCameraMode();
                                        if (Build.VERSION.SDK_INT >= 24) {
                                            Iterator it6 = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(arrayList2, IntOffsetKt.listOf(meteringRepeating.mCurrentConfig), IntOffsetKt.listOf((Object) 0)).entrySet().iterator();
                                            while (it6.hasNext()) {
                                                i = 10;
                                                if (((DynamicRange) ((Map.Entry) it6.next()).getValue()).mBitDepth == 10) {
                                                    break;
                                                }
                                            }
                                        }
                                        i = 8;
                                        int i2 = i;
                                        boolean containsVideoCapture = SQLite.containsVideoCapture(arrayList);
                                        VideoStabilization videoStabilization = SQLite.getVideoStabilization(arrayList, new BorderKt$$ExternalSyntheticLambda1(7));
                                        ArrayList arrayList4 = new ArrayList();
                                        Iterator it7 = arrayList.iterator();
                                        while (it7.hasNext()) {
                                            Object next = it7.next();
                                            if (next instanceof ImageCapture) {
                                                arrayList4.add(next);
                                            }
                                        }
                                        ImageCapture imageCapture = (ImageCapture) CollectionsKt.firstOrNull((List) arrayList4);
                                        boolean z2 = (imageCapture == null || (useCaseConfig = imageCapture.mCurrentConfig) == null || useCaseConfig.getInputFormat() != 4101) ? false : true;
                                        Range range = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
                                        range.getClass();
                                        SupportedSurfaceCombination.FeatureSettings featureSettings = new SupportedSurfaceCombination.FeatureSettings(cameraMode2, i2, containsVideoCapture, videoStabilization, z2, false, false, false, range, false);
                                        ArrayList arrayList5 = new ArrayList();
                                        arrayList5.addAll(arrayList3);
                                        int cameraMode3 = getCameraMode();
                                        int inputFormat3 = meteringRepeating.mCurrentConfig.getInputFormat();
                                        Size attachedSurfaceResolution2 = meteringRepeating.getAttachedSurfaceResolution();
                                        attachedSurfaceResolution2.getClass();
                                        arrayList5.add(supportedSurfaceCombination.transformSurfaceConfig(cameraMode3, inputFormat3, attachedSurfaceResolution2, meteringRepeating.mCurrentConfig.getStreamUseCase()));
                                        EmptyList emptyList = EmptyList.INSTANCE;
                                        checkSupported = this.supportedSurfaceCombination.checkSupported(featureSettings, arrayList5, EmptyMap.INSTANCE, emptyList, emptyList);
                                        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                            Log.d("CXCP", "Combination of " + arrayList3 + " + " + meteringRepeating + " is supported: " + checkSupported);
                                        }
                                    }
                                    if (checkSupported) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void refreshAttachedUseCases(LinkedHashSet linkedHashSet) {
        closeCurrentUseCases();
        List list = CollectionsKt.toList(linkedHashSet);
        Object[] objArr = 0;
        if (list.isEmpty()) {
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                useCaseCameraControl.setRequestControl(null);
                useCaseCameraControl.reset();
            }
            return;
        }
        if (!this.shouldCreateCameraGraphImmediately) {
            Iterator it = this.allControls.iterator();
            while (it.hasNext()) {
                ((UseCaseCameraControl) it.next()).setRequestControl(null);
            }
        }
        GraphStateToCameraStateAdapter graphStateToCameraStateAdapter = new GraphStateToCameraStateAdapter(this.cameraStateAdapter);
        getSessionProcessor$camera_camera2();
        SessionConfigAdapter sessionConfigAdapter = new SessionConfigAdapter(list, this.isPrimary);
        CameraGraphConfigProvider cameraGraphConfigProvider = this.cameraGraphConfigProvider;
        TorchControl$$ExternalSyntheticLambda1 torchControl$$ExternalSyntheticLambda1 = this.defaultCameraGraphFactory;
        getSessionProcessor$camera_camera2();
        cameraGraphConfigProvider.getClass();
        torchControl$$ExternalSyntheticLambda1.getClass();
        UseCaseCameraConfig useCaseCameraConfig = new UseCaseCameraConfig(torchControl$$ExternalSyntheticLambda1, graphStateToCameraStateAdapter, sessionConfigAdapter, new SynchronizedLazyImpl(new ConnectPlan$$ExternalSyntheticLambda0(sessionConfigAdapter, cameraGraphConfigProvider, graphStateToCameraStateAdapter, 1)));
        if (!this.shouldCreateCameraGraphImmediately) {
            CameraCoordinatorAdapter cameraCoordinatorAdapter = this.cameraCoordinator;
            CameraInfo cameraInfo = (CameraInfo) this.cameraInfoInternal.get();
            cameraCoordinatorAdapter.getClass();
            cameraInfo.getClass();
            synchronized (cameraCoordinatorAdapter.lock) {
                try {
                    if (cameraCoordinatorAdapter.concurrentModeOn) {
                        ArrayList arrayList = cameraCoordinatorAdapter.pendingCameraIds;
                        CameraMetadata cameraMetadata = (CameraMetadata) SQLite.unwrapAs(cameraInfo, Reflection.getOrCreateKotlinClass(CameraMetadata.class));
                        String str = cameraMetadata != null ? ((Camera2CameraMetadata) cameraMetadata).camera : null;
                        CameraId cameraId = str != null ? new CameraId(str) : null;
                        if (cameraId == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        arrayList.add(cameraId.value);
                        cameraCoordinatorAdapter.tryStartConcurrentGraph();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        CardView.AnonymousClass1 anonymousClass1 = this.builder;
        this._activeComponent = new DaggerCameraAppComponent$UseCaseCameraComponentImpl((DaggerCameraAppComponent$CameraAppComponentImpl) anonymousClass1.mCardBackground, (DaggerCameraAppComponent$CameraComponentImpl) anonymousClass1.this$0, useCaseCameraConfig);
        UseCaseCameraImpl camera = getCamera();
        if (camera == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        JobKt.launch$default(camera.threads.sequentialScope, null, null, new WakeLock$release$2((Continuation) (objArr == true ? 1 : 0), (Object) camera, 3), 3);
        Iterator it2 = this.allControls.iterator();
        while (it2.hasNext()) {
            ((UseCaseCameraControl) it2.next()).setRequestControl(camera.requestControl);
        }
        JobKt.launch$default(camera.threads.sequentialScope, null, null, new MessageListFragment$onCreate$2((Continuation) null, camera, this.activeResumeEnabled), 3);
        updateRunningUseCases(CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases));
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Notifying " + this.pendingUseCasesToNotifyCameraControlReady + " camera control ready");
        }
        Iterator it3 = this.pendingUseCasesToNotifyCameraControlReady.iterator();
        while (it3.hasNext()) {
            ((UseCase) it3.next()).onCameraControlReady();
        }
        this.pendingUseCasesToNotifyCameraControlReady.clear();
    }

    public final void refreshRunningUseCases() {
        if (this.attachedUseCases.isEmpty()) {
            return;
        }
        LinkedHashSet intersect = CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases);
        if (((Boolean) this.cameraXConfig.mConfig.retrieveOption(CameraXConfig.OPTION_REPEATING_STREAM_FORCED, Boolean.TRUE)).booleanValue() && !this.attachedUseCases.contains(this.meteringRepeating) && isMeteringRepeatingRequired(intersect)) {
            addRepeatingUseCase();
            return;
        }
        if (!intersect.contains(this.meteringRepeating) || isMeteringRepeatingRequired(intersect)) {
            updateRunningUseCases(intersect);
            return;
        }
        MeteringRepeating meteringRepeating = this.meteringRepeating;
        meteringRepeating.getClass();
        synchronized (this.lock) {
            if (this.activeUseCases.remove(meteringRepeating)) {
                refreshRunningUseCases();
            }
        }
        detach(IntOffsetKt.listOf(meteringRepeating));
        meteringRepeating.unbindFromCamera((CameraInternal) this.cameraInternal.get());
    }

    public final String toString() {
        return "UseCaseManager<" + this.cameraGraphConfigProvider + '>';
    }

    public final void updateRunningUseCases(LinkedHashSet linkedHashSet) {
        UseCaseCameraImpl camera = getCamera();
        if (camera != null) {
            camera.requestControl.updateRepeatingRequestAsync(linkedHashSet, this.isPrimary);
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                if (useCaseCameraControl instanceof RunningUseCasesChangeListener) {
                    ((RunningUseCasesChangeListener) useCaseCameraControl).onRunningUseCasesChanged(linkedHashSet);
                }
            }
        }
    }

    public final void updateZslDisabledByUseCaseConfigStatus() {
        boolean z = false;
        LinkedHashSet linkedHashSet = this.attachedUseCases;
        if (linkedHashSet == null || !linkedHashSet.isEmpty()) {
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((UseCase) it.next()).mCurrentConfig.isZslDisabled()) {
                    z = true;
                    break;
                }
            }
        }
        this.zslControl.setZslDisabledByUserCaseConfig(z);
    }
}
