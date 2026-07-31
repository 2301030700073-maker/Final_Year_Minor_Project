package androidx.compose.animation.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutatePriority {
    public static final /* synthetic */ MutatePriority[] $VALUES;
    public static final MutatePriority Default;

    static {
        MutatePriority mutatePriority = new MutatePriority("Default", 0);
        Default = mutatePriority;
        $VALUES = new MutatePriority[]{mutatePriority, new MutatePriority("UserInput", 1), new MutatePriority("PreventUserInput", 2)};
    }

    public static MutatePriority valueOf(String str) {
        return (MutatePriority) Enum.valueOf(MutatePriority.class, str);
    }

    public static MutatePriority[] values() {
        return (MutatePriority[]) $VALUES.clone();
    }
}
