package androidx.camera.camera2.pipe;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior {
    public static final /* synthetic */ CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior[] $VALUES;
    public static final CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior AT_LEAST;

    static {
        CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior cameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior = new CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior("AT_LEAST", 0);
        AT_LEAST = cameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;
        $VALUES = new CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior[]{cameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior, new CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior("EXACT", 1)};
    }

    public static CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior valueOf(String str) {
        return (CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior) Enum.valueOf(CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior.class, str);
    }

    public static CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior[] values() {
        return (CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior[]) $VALUES.clone();
    }
}
