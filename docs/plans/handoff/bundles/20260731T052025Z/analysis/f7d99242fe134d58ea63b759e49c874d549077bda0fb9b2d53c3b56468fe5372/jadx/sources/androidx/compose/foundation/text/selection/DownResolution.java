package androidx.compose.foundation.text.selection;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DownResolution {
    public static final /* synthetic */ DownResolution[] $VALUES;
    public static final DownResolution Cancel;
    public static final DownResolution Drag;
    public static final DownResolution Timeout;
    public static final DownResolution Up;

    static {
        DownResolution downResolution = new DownResolution("Up", 0);
        Up = downResolution;
        DownResolution downResolution2 = new DownResolution("Drag", 1);
        Drag = downResolution2;
        DownResolution downResolution3 = new DownResolution("Timeout", 2);
        Timeout = downResolution3;
        DownResolution downResolution4 = new DownResolution("Cancel", 3);
        Cancel = downResolution4;
        $VALUES = new DownResolution[]{downResolution, downResolution2, downResolution3, downResolution4};
    }

    public static DownResolution valueOf(String str) {
        return (DownResolution) Enum.valueOf(DownResolution.class, str);
    }

    public static DownResolution[] values() {
        return (DownResolution[]) $VALUES.clone();
    }
}
