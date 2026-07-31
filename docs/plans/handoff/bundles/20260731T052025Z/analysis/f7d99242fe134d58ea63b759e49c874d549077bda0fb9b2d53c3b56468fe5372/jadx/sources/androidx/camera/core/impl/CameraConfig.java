package androidx.camera.core.impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraConfig extends ReadableConfig {
    public static final AutoValue_Config_Option OPTION_USECASE_CONFIG_FACTORY = new AutoValue_Config_Option("camerax.core.camera.useCaseConfigFactory", UseCaseConfigFactory.class, null);
    public static final AutoValue_Config_Option OPTION_USE_CASE_COMBINATION_REQUIRED_RULE = new AutoValue_Config_Option("camerax.core.camera.useCaseCombinationRequiredRule", Integer.class, null);
    public static final AutoValue_Config_Option OPTION_SESSION_PROCESSOR = new AutoValue_Config_Option("camerax.core.camera.SessionProcessor", SessionProcessor.class, null);
    public static final AutoValue_Config_Option OPTION_POSTVIEW_SUPPORTED = new AutoValue_Config_Option("camerax.core.camera.isPostviewSupported", Boolean.class, null);
    public static final AutoValue_Config_Option OPTION_CAPTURE_PROCESS_PROGRESS_SUPPORTED = new AutoValue_Config_Option("camerax.core.camera.isCaptureProcessProgressSupported", Boolean.class, null);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.impl.CameraConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
            AutoValue_Config_Option autoValue_Config_Option = CameraConfig.OPTION_USECASE_CONFIG_FACTORY;
        }
    }
}
