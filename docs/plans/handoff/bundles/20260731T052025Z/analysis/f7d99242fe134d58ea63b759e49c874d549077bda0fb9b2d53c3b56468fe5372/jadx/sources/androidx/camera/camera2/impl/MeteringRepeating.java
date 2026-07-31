package androidx.camera.camera2.impl;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda2;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Set;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MeteringRepeating extends UseCase {
    public final CameraPipeCameraProperties cameraProperties;
    public SessionConfig.CloseableErrorListener closeableErrorListener;
    public SurfaceRequest.AnonymousClass2 deferrableSurface;
    public final Object deferrableSurfaceLock;
    public final DisplayInfoManager displayInfoManager;
    public final Size meteringSurfaceSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements UseCaseConfig.Builder {
        public DisplayInfoManager getInstance(Context context) {
            DisplayInfoManager displayInfoManager;
            context.getClass();
            DisplayInfoManager displayInfoManager2 = DisplayInfoManager.instance;
            if (displayInfoManager2 != null) {
                return displayInfoManager2;
            }
            synchronized (this) {
                displayInfoManager = DisplayInfoManager.instance;
                if (displayInfoManager == null) {
                    Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
                    persistentApplicationContext.getClass();
                    displayInfoManager = new DisplayInfoManager(persistentApplicationContext);
                    DisplayInfoManager.instance = displayInfoManager;
                }
            }
            return displayInfoManager;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableOptionsBundle getMutableConfig() {
            return MutableOptionsBundle.create();
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public UseCaseConfig getUseCaseConfig() {
            return new MeteringRepeatingConfig();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c3, code lost:
    
        if (r0 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c6, code lost:
    
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        if (r0 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ce, code lost:
    
        r11 = r10[0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MeteringRepeating(androidx.camera.camera2.impl.CameraPipeCameraProperties r10, androidx.camera.camera2.impl.MeteringRepeating.MeteringRepeatingConfig r11, androidx.camera.camera2.impl.DisplayInfoManager r12) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.MeteringRepeating.<init>(androidx.camera.camera2.impl.CameraPipeCameraProperties, androidx.camera.camera2.impl.MeteringRepeating$MeteringRepeatingConfig, androidx.camera.camera2.impl.DisplayInfoManager):void");
    }

    public final SurfaceRequest.AnonymousClass2 createAndManageDeferrableSurface(Size size) {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        Surface surface = new Surface(surfaceTexture);
        SurfaceRequest.AnonymousClass2 anonymousClass2 = this.deferrableSurface;
        if (anonymousClass2 != null) {
            anonymousClass2.close();
        }
        SurfaceRequest.AnonymousClass2 anonymousClass22 = new SurfaceRequest.AnonymousClass2(surface, size, this.mCurrentConfig.getInputFormat());
        this.deferrableSurface = anonymousClass22;
        Futures.nonCancellationPropagating(anonymousClass22.mTerminationFuture).addListener(new CameraX$$ExternalSyntheticLambda2(6, surface, surfaceTexture), Util.directExecutor());
        return anonymousClass22;
    }

    public final SessionConfig.Builder createPipeline(Size size) {
        SurfaceRequest.AnonymousClass2 createAndManageDeferrableSurface;
        synchronized (this.deferrableSurfaceLock) {
            createAndManageDeferrableSurface = createAndManageDeferrableSurface(size);
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new ImageAnalysis$$ExternalSyntheticLambda2(this, size, 1));
        this.closeableErrorListener = closeableErrorListener2;
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(new MeteringRepeatingConfig(), size);
        createFrom.mCaptureConfigBuilder.delimiterIdx = 1;
        createFrom.addSurface(createAndManageDeferrableSurface, DynamicRange.SDR, -1);
        createFrom.mErrorListener = closeableErrorListener2;
        return createFrom;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        useCaseConfigFactory.getClass();
        this.cameraProperties.getClass();
        this.displayInfoManager.getClass();
        return new MeteringRepeatingConfig();
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        config.getClass();
        this.cameraProperties.getClass();
        this.displayInfoManager.getClass();
        return new Builder();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecUpdated(AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        Size size = this.meteringSurfaceSize;
        updateSessionConfig(IntOffsetKt.listOf(createPipeline(size).build()));
        TooltipPopup builder = autoValue_StreamSpec.toBuilder();
        builder.mContext = size;
        return builder.build();
    }

    @Override // androidx.camera.core.UseCase
    public final void onUnbind() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        this.closeableErrorListener = null;
        synchronized (this.deferrableSurfaceLock) {
            try {
                SurfaceRequest.AnonymousClass2 anonymousClass2 = this.deferrableSurface;
                if (anonymousClass2 != null) {
                    anonymousClass2.close();
                }
                this.deferrableSurface = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MeteringRepeatingConfig implements UseCaseConfig, ImageInputConfig {
        public final MutableOptionsBundle config;

        public MeteringRepeatingConfig() {
            MutableOptionsBundle create = MutableOptionsBundle.create();
            create.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, CameraUseCaseAdapter.DefaultSessionOptionsUnpacker.INSTANCE);
            create.insertOption(TargetConfig.OPTION_TARGET_NAME, "MeteringRepeating");
            create.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.METERING_REPEATING);
            this.config = create;
        }

        @Override // androidx.camera.core.impl.Config
        public final /* synthetic */ boolean containsOption(AutoValue_Config_Option autoValue_Config_Option) {
            boolean containsOption;
            containsOption = getConfig().containsOption(autoValue_Config_Option);
            return containsOption;
        }

        @Override // androidx.camera.core.impl.Config
        public final void findOptions(CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0) {
            this.config.findOptions(captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final UseCaseConfigFactory.CaptureType getCaptureType() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public final Config getConfig() {
            return this.config;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getCustomMaxFrameRate(Size size) {
            return Config.CC.$default$getCustomMaxFrameRate(this, size);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final CaptureConfig getDefaultCaptureConfig() {
            return (CaptureConfig) retrieveOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, null);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final SessionConfig getDefaultSessionConfig() {
            return (SessionConfig) retrieveOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final SessionConfig getDefaultSessionConfig$1() {
            return (SessionConfig) retrieveOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, null);
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final /* synthetic */ DynamicRange getDynamicRange() {
            return Config.CC.$default$getDynamicRange(this);
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final int getInputFormat() {
            return 34;
        }

        @Override // androidx.camera.core.impl.Config
        public final Config.OptionPriority getOptionPriority(AutoValue_Config_Option autoValue_Config_Option) {
            return ((OptionsBundle) getConfig()).getOptionPriority(autoValue_Config_Option);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getPreviewStabilizationMode() {
            int intValue;
            intValue = ((Integer) retrieveOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0)).intValue();
            return intValue;
        }

        @Override // androidx.camera.core.impl.Config
        public final Set getPriorities(AutoValue_Config_Option autoValue_Config_Option) {
            return ((OptionsBundle) getConfig()).getPriorities(autoValue_Config_Option);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final CameraUseCaseAdapter.DefaultSessionOptionsUnpacker getSessionOptionUnpacker() {
            return (CameraUseCaseAdapter.DefaultSessionOptionsUnpacker) retrieveOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, null);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getSessionType() {
            int intValue;
            intValue = ((Integer) retrieveOption(UseCaseConfig.OPTION_SESSION_TYPE, 0)).intValue();
            return intValue;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ StreamUseCase getStreamUseCase() {
            return Config.CC.$default$getStreamUseCase(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getSurfaceOccupancyPriority() {
            int intValue;
            intValue = ((Integer) retrieveOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, 0)).intValue();
            return intValue;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ UseCaseConfig.AnonymousClass1 getTakePictureManagerProvider() {
            return Config.CC.$default$getTakePictureManagerProvider(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final Range getTargetFrameRate(Range range) {
            return (Range) retrieveOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, range);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ String getTargetName() {
            return Config.CC.$default$getTargetName(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getVideoStabilizationMode() {
            int intValue;
            intValue = ((Integer) retrieveOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0)).intValue();
            return intValue;
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final boolean hasDynamicRange() {
            return containsOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final boolean hasTargetFrameRate() {
            return containsOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ boolean isHighResolutionDisabled() {
            boolean booleanValue;
            booleanValue = ((Boolean) retrieveOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.FALSE)).booleanValue();
            return booleanValue;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ boolean isStrictFrameRateRequired() {
            return Config.CC.$default$isStrictFrameRateRequired(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ boolean isZslDisabled() {
            boolean booleanValue;
            booleanValue = ((Boolean) retrieveOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.FALSE)).booleanValue();
            return booleanValue;
        }

        @Override // androidx.camera.core.impl.Config
        public final Set listOptions() {
            return ((OptionsBundle) getConfig()).listOptions();
        }

        @Override // androidx.camera.core.impl.Config
        public final Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option, Object obj) {
            return ((OptionsBundle) getConfig()).retrieveOption(autoValue_Config_Option, obj);
        }

        @Override // androidx.camera.core.impl.Config
        public final Object retrieveOptionWithPriority(AutoValue_Config_Option autoValue_Config_Option, Config.OptionPriority optionPriority) {
            return ((OptionsBundle) getConfig()).retrieveOptionWithPriority(autoValue_Config_Option, optionPriority);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ String getTargetName(String str) {
            return Config.CC.$default$getTargetName(this, str);
        }

        @Override // androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option) {
            Object retrieveOption;
            retrieveOption = getConfig().retrieveOption(autoValue_Config_Option);
            return retrieveOption;
        }
    }
}
