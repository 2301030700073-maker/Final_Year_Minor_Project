package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewConfig implements UseCaseConfig, ImageOutputConfig, ThreadConfig {
    public final OptionsBundle mConfig;

    public PreviewConfig(OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ boolean containsOption(AutoValue_Config_Option autoValue_Config_Option) {
        boolean containsOption;
        containsOption = getConfig().containsOption(autoValue_Config_Option);
        return containsOption;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ void findOptions(CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0) {
        getConfig().findOptions(captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getAppTargetRotation() {
        int intValue;
        intValue = ((Integer) retrieveOption(ImageOutputConfig.OPTION_APP_TARGET_ROTATION, -1)).intValue();
        return intValue;
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ UseCaseConfigFactory.CaptureType getCaptureType() {
        return Config.CC.$default$getCaptureType(this);
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config getConfig() {
        return this.mConfig;
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getCustomMaxFrameRate(Size size) {
        return Config.CC.$default$getCustomMaxFrameRate(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ ArrayList getCustomOrderedResolutions() {
        return ImageOutputConfig.CC.$default$getCustomOrderedResolutions(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final CaptureConfig getDefaultCaptureConfig() {
        return (CaptureConfig) retrieveOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, null);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final Size getDefaultResolution() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (Size) retrieveOption(ImageOutputConfig.OPTION_DEFAULT_RESOLUTION, null);
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
        Object retrieveOption;
        retrieveOption = getConfig().retrieveOption(ImageInputConfig.OPTION_INPUT_FORMAT);
        return ((Integer) retrieveOption).intValue();
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final Size getMaxResolution() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (Size) retrieveOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, null);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getMirrorMode() {
        int intValue;
        intValue = ((Integer) retrieveOption(ImageOutputConfig.OPTION_MIRROR_MODE, -1)).intValue();
        return intValue;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Config.OptionPriority getOptionPriority(AutoValue_Config_Option autoValue_Config_Option) {
        Config.OptionPriority optionPriority;
        optionPriority = getConfig().getOptionPriority(autoValue_Config_Option);
        return optionPriority;
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getPreviewStabilizationMode() {
        int intValue;
        intValue = ((Integer) retrieveOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0)).intValue();
        return intValue;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Set getPriorities(AutoValue_Config_Option autoValue_Config_Option) {
        Set priorities;
        priorities = getConfig().getPriorities(autoValue_Config_Option);
        return priorities;
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final ResolutionSelector getResolutionSelector() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (ResolutionSelector) retrieveOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final ResolutionSelector getResolutionSelector$1() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (ResolutionSelector) retrieveOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, null);
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

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final List getSupportedResolutions() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (List) retrieveOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, null);
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

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final int getTargetAspectRatio() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return ((Integer) retrieveOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO)).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final Range getTargetFrameRate(Range range) {
        return (Range) retrieveOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, range);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName() {
        return Config.CC.$default$getTargetName(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final Size getTargetResolution() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return (Size) retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, null);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getTargetRotation(int i) {
        int intValue;
        intValue = ((Integer) retrieveOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i))).intValue();
        return intValue;
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

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final boolean hasTargetAspectRatio() {
        int i = ImageOutputConfig.CC.$r8$clinit;
        return containsOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO);
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
    public final /* synthetic */ Set listOptions() {
        Set listOptions;
        listOptions = getConfig().listOptions();
        return listOptions;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option) {
        Object retrieveOption;
        retrieveOption = getConfig().retrieveOption(autoValue_Config_Option);
        return retrieveOption;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOptionWithPriority(AutoValue_Config_Option autoValue_Config_Option, Config.OptionPriority optionPriority) {
        Object retrieveOptionWithPriority;
        retrieveOptionWithPriority = getConfig().retrieveOptionWithPriority(autoValue_Config_Option, optionPriority);
        return retrieveOptionWithPriority;
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName(String str) {
        return Config.CC.$default$getTargetName(this, str);
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option, Object obj) {
        Object retrieveOption;
        retrieveOption = getConfig().retrieveOption(autoValue_Config_Option, obj);
        return retrieveOption;
    }
}
