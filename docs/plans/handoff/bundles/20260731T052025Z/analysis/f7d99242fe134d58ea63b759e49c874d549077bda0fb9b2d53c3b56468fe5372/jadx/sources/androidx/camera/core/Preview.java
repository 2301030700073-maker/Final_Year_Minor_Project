package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageAnalysisConfig;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda4;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.apache.james.mime4j.stream.RawField;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Preview extends UseCase {
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    public static final HandlerScheduledExecutorService DEFAULT_SURFACE_PROVIDER_EXECUTOR = Util.mainThreadExecutor();
    public SurfaceEdge mCameraEdge;
    public SessionConfig.CloseableErrorListener mCloseableErrorListener;
    public SurfaceRequest mCurrentSurfaceRequest;
    public SessionConfig.Builder mSessionConfigBuilder;
    public SurfaceRequest.AnonymousClass2 mSessionDeferrableSurface;
    public SurfaceProvider mSurfaceProvider;
    public Executor mSurfaceProviderExecutor;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Defaults {
        public static final PreviewConfig DEFAULT_CONFIG;

        static {
            ResolutionSelector resolutionSelector = new ResolutionSelector(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY, ResolutionStrategy.HIGHEST_AVAILABLE_STRATEGY, null);
            Builder builder = new Builder(0);
            AutoValue_Config_Option autoValue_Config_Option = UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY;
            MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
            mutableOptionsBundle.insertOption(autoValue_Config_Option, 2);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, 0);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.TRUE);
            mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
            DEFAULT_CONFIG = new PreviewConfig(OptionsBundle.from(mutableOptionsBundle));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface SurfaceProvider {
        void onSurfaceRequested(SurfaceRequest surfaceRequest);
    }

    public final void clearPipeline$2() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        SurfaceRequest.AnonymousClass2 anonymousClass2 = this.mSessionDeferrableSurface;
        if (anonymousClass2 != null) {
            anonymousClass2.close();
            this.mSessionDeferrableSurface = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        SurfaceRequest surfaceRequest = this.mCurrentSurfaceRequest;
        if (surfaceRequest != null) {
            synchronized (surfaceRequest.mLock) {
                surfaceRequest.mTransformationInfoListener = null;
                surfaceRequest.mTransformationInfoExecutor = null;
            }
        }
        this.mCurrentSurfaceRequest = null;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        DEFAULT_CONFIG.getClass();
        PreviewConfig previewConfig = Defaults.DEFAULT_CONFIG;
        previewConfig.getClass();
        Config config = useCaseConfigFactory.getConfig(Config.CC.$default$getCaptureType(previewConfig), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, previewConfig);
        }
        if (config == null) {
            return null;
        }
        return new PreviewConfig(OptionsBundle.from(((Builder) getUseCaseConfigBuilder(config)).mMutableConfig));
    }

    @Override // androidx.camera.core.UseCase
    public final Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(1);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return new Builder(MutableOptionsBundle.from(config), 0);
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        TooltipPopup builder = this.mAttachedStreamSpec.toBuilder();
        builder.mTmpAnchorPos = config;
        return builder.build();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecUpdated(AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        Utf8.SafeProcessor.d("Preview", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + autoValue_StreamSpec + ", secondaryStreamSpec " + autoValue_StreamSpec2);
        updateConfigAndOutput((PreviewConfig) this.mCurrentConfig, autoValue_StreamSpec);
        return autoValue_StreamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void onUnbind() {
        clearPipeline$2();
    }

    public final void setSurfaceProvider(SurfaceProvider surfaceProvider) {
        Validate.checkMainThread();
        if (surfaceProvider == null) {
            this.mSurfaceProvider = null;
            this.mState = 2;
            notifyState();
        } else {
            this.mSurfaceProvider = surfaceProvider;
            this.mSurfaceProviderExecutor = DEFAULT_SURFACE_PROVIDER_EXECUTOR;
            if (getAttachedSurfaceResolution() != null) {
                updateConfigAndOutput((PreviewConfig) this.mCurrentConfig, this.mAttachedStreamSpec);
                notifyReset();
            }
            notifyActive();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void setViewPortCropRect(Rect rect) {
        this.mViewPortCropRect = rect;
        CameraInternal camera = getCamera();
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (camera == null || surfaceEdge == null) {
            return;
        }
        Validate.runOnMain(new SurfaceEdge$$ExternalSyntheticLambda4(surfaceEdge, getRelativeRotation(camera, isMirroringRequired(camera)), ((ImageOutputConfig) this.mCurrentConfig).getAppTargetRotation()));
    }

    public final String toString() {
        return "Preview:".concat(getName());
    }

    public final void updateConfigAndOutput(PreviewConfig previewConfig, AutoValue_StreamSpec autoValue_StreamSpec) {
        int intValue;
        Validate.checkMainThread();
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        clearPipeline$2();
        int i = 0;
        RelationUtil.checkState(null, this.mCameraEdge == null);
        Matrix matrix = this.mSensorToBufferTransformMatrix;
        boolean hasTransform = camera.getHasTransform();
        Size size = autoValue_StreamSpec.resolution;
        Rect rect = this.mViewPortCropRect;
        if (rect == null) {
            rect = size != null ? new Rect(0, 0, size.getWidth(), size.getHeight()) : null;
        }
        Objects.requireNonNull(rect);
        SurfaceEdge surfaceEdge = new SurfaceEdge(1, 34, autoValue_StreamSpec, matrix, hasTransform, rect, getRelativeRotation(camera, isMirroringRequired(camera)), ((ImageOutputConfig) this.mCurrentConfig).getAppTargetRotation(), camera.getHasTransform() && isMirroringRequired(camera));
        this.mCameraEdge = surfaceEdge;
        Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = new Preview$$ExternalSyntheticLambda0(i, this);
        Validate.checkMainThread();
        surfaceEdge.checkNotClosed();
        surfaceEdge.mOnInvalidatedListeners.add(preview$$ExternalSyntheticLambda0);
        SurfaceRequest createSurfaceRequest = this.mCameraEdge.createSurfaceRequest(camera, true);
        this.mCurrentSurfaceRequest = createSurfaceRequest;
        this.mSessionDeferrableSurface = createSurfaceRequest.mInternalDeferrableSurface;
        if (this.mSurfaceProvider != null) {
            CameraInternal camera2 = getCamera();
            SurfaceEdge surfaceEdge2 = this.mCameraEdge;
            if (camera2 != null && surfaceEdge2 != null) {
                Validate.runOnMain(new SurfaceEdge$$ExternalSyntheticLambda4(surfaceEdge2, getRelativeRotation(camera2, isMirroringRequired(camera2)), ((ImageOutputConfig) this.mCurrentConfig).getAppTargetRotation()));
            }
            SurfaceProvider surfaceProvider = this.mSurfaceProvider;
            surfaceProvider.getClass();
            SurfaceRequest surfaceRequest = this.mCurrentSurfaceRequest;
            surfaceRequest.getClass();
            this.mSurfaceProviderExecutor.execute(new CameraX$$ExternalSyntheticLambda2(12, surfaceProvider, surfaceRequest));
        }
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(previewConfig, autoValue_StreamSpec.resolution);
        RawField rawField = createFrom.mCaptureConfigBuilder;
        createFrom.mSessionType = autoValue_StreamSpec.sessionType;
        applyExpectedFrameRateRange(createFrom, autoValue_StreamSpec);
        intValue = ((Integer) previewConfig.retrieveOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0)).intValue();
        if (intValue != 0) {
            rawField.getClass();
            if (intValue != 0) {
                ((MutableOptionsBundle) rawField.name).insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(intValue));
            }
        }
        Config config = autoValue_StreamSpec.implementationOptions;
        if (config != null) {
            rawField.addImplementationOptions(config);
        }
        if (this.mSurfaceProvider != null) {
            createFrom.addSurface(this.mSessionDeferrableSurface, autoValue_StreamSpec.dynamicRange, ((ImageOutputConfig) this.mCurrentConfig).getMirrorMode());
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new Preview$$ExternalSyntheticLambda2(i, this));
        this.mCloseableErrorListener = closeableErrorListener2;
        createFrom.mErrorListener = closeableErrorListener2;
        this.mSessionConfigBuilder = createFrom;
        Object[] objArr = {createFrom.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements ExtendableBuilder, UseCaseConfig.Builder {
        public final /* synthetic */ int $r8$classId;
        public final MutableOptionsBundle mMutableConfig;

        public Builder(MutableOptionsBundle mutableOptionsBundle, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 4:
                    this.mMutableConfig = mutableOptionsBundle;
                    AutoValue_Config_Option autoValue_Config_Option = TargetConfig.OPTION_TARGET_CLASS;
                    Class cls = (Class) mutableOptionsBundle.retrieveOption(autoValue_Config_Option, null);
                    if (cls != null && !cls.equals(ImageAnalysis.class)) {
                        Regex$$ExternalSyntheticBUOutline0.m$1("Invalid target class configuration for ", this, ": ", cls);
                        throw null;
                    }
                    mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS);
                    mutableOptionsBundle.insertOption(autoValue_Config_Option, ImageAnalysis.class);
                    AutoValue_Config_Option autoValue_Config_Option2 = TargetConfig.OPTION_TARGET_NAME;
                    if (mutableOptionsBundle.retrieveOption(autoValue_Config_Option2, null) == null) {
                        mutableOptionsBundle.insertOption(autoValue_Config_Option2, ImageAnalysis.class.getCanonicalName() + "-" + UUID.randomUUID());
                        return;
                    }
                    return;
                case 5:
                    this.mMutableConfig = mutableOptionsBundle;
                    AutoValue_Config_Option autoValue_Config_Option3 = TargetConfig.OPTION_TARGET_CLASS;
                    Class cls2 = (Class) mutableOptionsBundle.retrieveOption(autoValue_Config_Option3, null);
                    if (cls2 != null && !cls2.equals(ImageCapture.class)) {
                        Regex$$ExternalSyntheticBUOutline0.m$1("Invalid target class configuration for ", this, ": ", cls2);
                        throw null;
                    }
                    mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE);
                    mutableOptionsBundle.insertOption(autoValue_Config_Option3, ImageCapture.class);
                    AutoValue_Config_Option autoValue_Config_Option4 = TargetConfig.OPTION_TARGET_NAME;
                    if (mutableOptionsBundle.retrieveOption(autoValue_Config_Option4, null) == null) {
                        mutableOptionsBundle.insertOption(autoValue_Config_Option4, ImageCapture.class.getCanonicalName() + "-" + UUID.randomUUID());
                        return;
                    }
                    return;
                case 6:
                    this.mMutableConfig = mutableOptionsBundle;
                    AutoValue_Config_Option autoValue_Config_Option5 = TargetConfig.OPTION_TARGET_CLASS;
                    Class cls3 = (Class) mutableOptionsBundle.retrieveOption(autoValue_Config_Option5, null);
                    if (cls3 != null && !cls3.equals(StreamSharing.class)) {
                        Regex$$ExternalSyntheticBUOutline0.m$1("Invalid target class configuration for ", this, ": ", cls3);
                        throw null;
                    }
                    mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.STREAM_SHARING);
                    mutableOptionsBundle.insertOption(autoValue_Config_Option5, StreamSharing.class);
                    AutoValue_Config_Option autoValue_Config_Option6 = TargetConfig.OPTION_TARGET_NAME;
                    if (mutableOptionsBundle.retrieveOption(autoValue_Config_Option6, null) == null) {
                        mutableOptionsBundle.insertOption(autoValue_Config_Option6, StreamSharing.class.getCanonicalName() + "-" + UUID.randomUUID());
                        return;
                    }
                    return;
                default:
                    this.mMutableConfig = mutableOptionsBundle;
                    AutoValue_Config_Option autoValue_Config_Option7 = TargetConfig.OPTION_TARGET_CLASS;
                    Class cls4 = (Class) mutableOptionsBundle.retrieveOption(autoValue_Config_Option7, null);
                    if (cls4 != null && !cls4.equals(Preview.class)) {
                        Regex$$ExternalSyntheticBUOutline0.m$1("Invalid target class configuration for ", this, ": ", cls4);
                        throw null;
                    }
                    mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.PREVIEW);
                    mutableOptionsBundle.insertOption(autoValue_Config_Option7, Preview.class);
                    AutoValue_Config_Option autoValue_Config_Option8 = TargetConfig.OPTION_TARGET_NAME;
                    if (mutableOptionsBundle.retrieveOption(autoValue_Config_Option8, null) == null) {
                        mutableOptionsBundle.insertOption(autoValue_Config_Option8, Preview.class.getCanonicalName() + "-" + UUID.randomUUID());
                    }
                    AutoValue_Config_Option autoValue_Config_Option9 = ImageOutputConfig.OPTION_MIRROR_MODE;
                    if (((Integer) mutableOptionsBundle.retrieveOption(autoValue_Config_Option9, -1)).intValue() == -1) {
                        mutableOptionsBundle.insertOption(autoValue_Config_Option9, 2);
                        return;
                    }
                    return;
            }
        }

        public Camera2ImplConfig build() {
            return new Camera2ImplConfig(OptionsBundle.from(this.mMutableConfig));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableOptionsBundle getMutableConfig() {
            int i = this.$r8$classId;
            MutableOptionsBundle mutableOptionsBundle = this.mMutableConfig;
            switch (i) {
                case 0:
                    return mutableOptionsBundle;
                case 1:
                    throw null;
                case 2:
                    throw null;
                case 3:
                case 4:
                case 5:
                default:
                    return mutableOptionsBundle;
            }
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public UseCaseConfig getUseCaseConfig() {
            int i = this.$r8$classId;
            MutableOptionsBundle mutableOptionsBundle = this.mMutableConfig;
            switch (i) {
                case 0:
                    return new PreviewConfig(OptionsBundle.from(mutableOptionsBundle));
                case 4:
                    return new ImageAnalysisConfig(OptionsBundle.from(mutableOptionsBundle));
                case 5:
                    return new ImageCaptureConfig(OptionsBundle.from(mutableOptionsBundle));
                default:
                    return new StreamSharingConfig(OptionsBundle.from(mutableOptionsBundle));
            }
        }

        public void insertAllOptions(Config config) {
            config.getClass();
            for (AutoValue_Config_Option autoValue_Config_Option : config.listOptions()) {
                autoValue_Config_Option.getClass();
                this.mMutableConfig.insertOption(autoValue_Config_Option, config.getOptionPriority(autoValue_Config_Option), config.retrieveOption(autoValue_Config_Option));
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(int i) {
            this(MutableOptionsBundle.create(), 0);
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    this.mMutableConfig = MutableOptionsBundle.create();
                    return;
                case 2:
                    this.mMutableConfig = MutableOptionsBundle.create();
                    return;
                case 3:
                    MutableOptionsBundle create = MutableOptionsBundle.create();
                    this.mMutableConfig = create;
                    AutoValue_Config_Option autoValue_Config_Option = TargetConfig.OPTION_TARGET_CLASS;
                    Class cls = (Class) create.retrieveOption(autoValue_Config_Option, null);
                    if (cls != null && !cls.equals(CameraX.class)) {
                        Regex$$ExternalSyntheticBUOutline0.m$1("Invalid target class configuration for ", this, ": ", cls);
                        throw null;
                    }
                    create.insertOption(autoValue_Config_Option, CameraX.class);
                    AutoValue_Config_Option autoValue_Config_Option2 = TargetConfig.OPTION_TARGET_NAME;
                    if (create.retrieveOption(autoValue_Config_Option2, null) == null) {
                        create.insertOption(autoValue_Config_Option2, CameraX.class.getCanonicalName() + "-" + UUID.randomUUID());
                        return;
                    }
                    return;
                case 4:
                    this(MutableOptionsBundle.create(), 4);
                    return;
                case 5:
                    this(MutableOptionsBundle.create(), 5);
                    return;
                default:
                    return;
            }
        }
    }
}
