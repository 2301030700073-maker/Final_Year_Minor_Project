package androidx.camera.core;

import android.os.Handler;
import androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda1;
import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.internal.TargetConfig;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraXConfig implements TargetConfig {
    public final OptionsBundle mConfig;
    public static final AutoValue_Config_Option OPTION_CAMERA_FACTORY_PROVIDER = new AutoValue_Config_Option("camerax.core.appConfig.cameraFactoryProvider", CameraFactoryProvider.class, null);
    public static final AutoValue_Config_Option OPTION_DEVICE_SURFACE_MANAGER_PROVIDER = new AutoValue_Config_Option("camerax.core.appConfig.deviceSurfaceManagerProvider", Camera2Config$Companion$$ExternalSyntheticLambda0.class, null);
    public static final AutoValue_Config_Option OPTION_USECASE_CONFIG_FACTORY_PROVIDER = new AutoValue_Config_Option("camerax.core.appConfig.useCaseConfigFactoryProvider", Camera2Config$Companion$$ExternalSyntheticLambda1.class, null);
    public static final AutoValue_Config_Option OPTION_CAMERA_EXECUTOR = new AutoValue_Config_Option("camerax.core.appConfig.cameraExecutor", Executor.class, null);
    public static final AutoValue_Config_Option OPTION_SCHEDULER_HANDLER = new AutoValue_Config_Option("camerax.core.appConfig.schedulerHandler", Handler.class, null);
    public static final AutoValue_Config_Option OPTION_MIN_LOGGING_LEVEL = new AutoValue_Config_Option("camerax.core.appConfig.minimumLoggingLevel", Integer.TYPE, null);
    public static final AutoValue_Config_Option OPTION_AVAILABLE_CAMERAS_LIMITER = new AutoValue_Config_Option("camerax.core.appConfig.availableCamerasLimiter", CameraSelector.class, null);
    public static final AutoValue_Config_Option OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING = new AutoValue_Config_Option("camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming", Long.TYPE, null);
    public static final AutoValue_Config_Option OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY = new AutoValue_Config_Option("camerax.core.appConfig.cameraProviderInitRetryPolicy", RetryPolicy.class, null);
    public static final AutoValue_Config_Option OPTION_QUIRK_SETTINGS = new AutoValue_Config_Option("camerax.core.appConfig.quirksSettings", QuirkSettings.class, null);
    public static final AutoValue_Config_Option OPTION_REPEATING_STREAM_FORCED = new AutoValue_Config_Option("camerax.core.appConfig.repeatingStreamForced", Boolean.TYPE, null);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Provider {
        CameraXConfig getCameraXConfig();
    }

    public CameraXConfig(OptionsBundle optionsBundle) {
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

    public final CameraSelector getAvailableCamerasLimiter() {
        return (CameraSelector) this.mConfig.retrieveOption(OPTION_AVAILABLE_CAMERAS_LIMITER, null);
    }

    public final CameraFactoryProvider getCameraFactoryProvider() {
        return (CameraFactoryProvider) this.mConfig.retrieveOption(OPTION_CAMERA_FACTORY_PROVIDER, null);
    }

    public final long getCameraOpenRetryMaxTimeoutInMillisWhileResuming() {
        return ((Long) this.mConfig.retrieveOption(OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING, -1L)).longValue();
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config getConfig() {
        return this.mConfig;
    }

    public final Camera2Config$Companion$$ExternalSyntheticLambda0 getDeviceSurfaceManagerProvider() {
        return (Camera2Config$Companion$$ExternalSyntheticLambda0) this.mConfig.retrieveOption(OPTION_DEVICE_SURFACE_MANAGER_PROVIDER, null);
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Config.OptionPriority getOptionPriority(AutoValue_Config_Option autoValue_Config_Option) {
        Config.OptionPriority optionPriority;
        optionPriority = getConfig().getOptionPriority(autoValue_Config_Option);
        return optionPriority;
    }

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Set getPriorities(AutoValue_Config_Option autoValue_Config_Option) {
        Set priorities;
        priorities = getConfig().getPriorities(autoValue_Config_Option);
        return priorities;
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName() {
        throw null;
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName(String str) {
        throw null;
    }

    public final Camera2Config$Companion$$ExternalSyntheticLambda1 getUseCaseConfigFactoryProvider() {
        return (Camera2Config$Companion$$ExternalSyntheticLambda1) this.mConfig.retrieveOption(OPTION_USECASE_CONFIG_FACTORY_PROVIDER, null);
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

    @Override // androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option, Object obj) {
        Object retrieveOption;
        retrieveOption = getConfig().retrieveOption(autoValue_Config_Option, obj);
        return retrieveOption;
    }
}
