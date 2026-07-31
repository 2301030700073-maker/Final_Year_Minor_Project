package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface UseCaseConfig extends TargetConfig, ImageInputConfig {
    public static final AutoValue_Config_Option OPTION_CAPTURE_TYPE;
    public static final AutoValue_Config_Option OPTION_HIGH_RESOLUTION_DISABLED;
    public static final AutoValue_Config_Option OPTION_IS_STRICT_FRAME_RATE_REQUIRED;
    public static final AutoValue_Config_Option OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT;
    public static final AutoValue_Config_Option OPTION_PREVIEW_STABILIZATION_MODE;
    public static final AutoValue_Config_Option OPTION_RESOLUTION_TO_MAX_FRAME_RATES;
    public static final AutoValue_Config_Option OPTION_SESSION_TYPE;
    public static final AutoValue_Config_Option OPTION_STREAM_USE_CASE;
    public static final AutoValue_Config_Option OPTION_SURFACE_OCCUPANCY_PRIORITY;
    public static final AutoValue_Config_Option OPTION_TAKE_PICTURE_MANAGER_PROVIDER;
    public static final AutoValue_Config_Option OPTION_TARGET_FRAME_RATE;
    public static final AutoValue_Config_Option OPTION_VIDEO_STABILIZATION_MODE;
    public static final AutoValue_Config_Option OPTION_ZSL_DISABLED;
    public static final AutoValue_Config_Option OPTION_DEFAULT_SESSION_CONFIG = new AutoValue_Config_Option("camerax.core.useCase.defaultSessionConfig", SessionConfig.class, null);
    public static final AutoValue_Config_Option OPTION_DEFAULT_CAPTURE_CONFIG = new AutoValue_Config_Option("camerax.core.useCase.defaultCaptureConfig", CaptureConfig.class, null);
    public static final AutoValue_Config_Option OPTION_SESSION_CONFIG_UNPACKER = new AutoValue_Config_Option("camerax.core.useCase.sessionConfigUnpacker", CameraUseCaseAdapter.DefaultSessionOptionsUnpacker.class, null);
    public static final AutoValue_Config_Option OPTION_CAPTURE_CONFIG_UNPACKER = new AutoValue_Config_Option("camerax.core.useCase.captureConfigUnpacker", CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker.class, null);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.impl.UseCaseConfig$1, reason: invalid class name */
    public final class AnonymousClass1 {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Builder extends ExtendableBuilder {
        UseCaseConfig getUseCaseConfig();
    }

    static {
        Class cls = Integer.TYPE;
        OPTION_SURFACE_OCCUPANCY_PRIORITY = new AutoValue_Config_Option("camerax.core.useCase.surfaceOccupancyPriority", cls, null);
        OPTION_SESSION_TYPE = new AutoValue_Config_Option("camerax.core.useCase.sessionType", cls, null);
        OPTION_TARGET_FRAME_RATE = new AutoValue_Config_Option("camerax.core.useCase.targetFrameRate", Range.class, null);
        OPTION_IS_STRICT_FRAME_RATE_REQUIRED = new AutoValue_Config_Option("camerax.core.useCase.isStrictFrameRateRequired", Boolean.class, null);
        OPTION_RESOLUTION_TO_MAX_FRAME_RATES = new AutoValue_Config_Option("camerax.core.useCase.resolutionToMaxFrameRate", Map.class, null);
        Class cls2 = Boolean.TYPE;
        OPTION_ZSL_DISABLED = new AutoValue_Config_Option("camerax.core.useCase.zslDisabled", cls2, null);
        OPTION_HIGH_RESOLUTION_DISABLED = new AutoValue_Config_Option("camerax.core.useCase.highResolutionDisabled", cls2, null);
        OPTION_CAPTURE_TYPE = new AutoValue_Config_Option("camerax.core.useCase.captureType", UseCaseConfigFactory.CaptureType.class, null);
        OPTION_PREVIEW_STABILIZATION_MODE = new AutoValue_Config_Option("camerax.core.useCase.previewStabilizationMode", cls, null);
        OPTION_VIDEO_STABILIZATION_MODE = new AutoValue_Config_Option("camerax.core.useCase.videoStabilizationMode", cls, null);
        OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT = new AutoValue_Config_Option("camerax.core.useCase.isVideoQualitySelectorDefault", Boolean.class, null);
        OPTION_TAKE_PICTURE_MANAGER_PROVIDER = new AutoValue_Config_Option("camerax.core.useCase.takePictureManagerProvider", AnonymousClass1.class, null);
        OPTION_STREAM_USE_CASE = new AutoValue_Config_Option("camerax.core.useCase.streamUseCase", StreamUseCase.class, null);
    }

    UseCaseConfigFactory.CaptureType getCaptureType();

    int getCustomMaxFrameRate(Size size);

    CaptureConfig getDefaultCaptureConfig();

    SessionConfig getDefaultSessionConfig();

    SessionConfig getDefaultSessionConfig$1();

    int getPreviewStabilizationMode();

    CameraUseCaseAdapter.DefaultSessionOptionsUnpacker getSessionOptionUnpacker();

    int getSessionType();

    StreamUseCase getStreamUseCase();

    int getSurfaceOccupancyPriority();

    AnonymousClass1 getTakePictureManagerProvider();

    Range getTargetFrameRate(Range range);

    int getVideoStabilizationMode();

    boolean hasTargetFrameRate();

    boolean isHighResolutionDisabled();

    boolean isStrictFrameRateRequired();

    boolean isZslDisabled();
}
