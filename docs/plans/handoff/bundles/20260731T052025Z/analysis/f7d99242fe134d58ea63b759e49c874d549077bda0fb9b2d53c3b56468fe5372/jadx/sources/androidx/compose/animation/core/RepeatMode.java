package androidx.compose.animation.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RepeatMode {
    public static final /* synthetic */ RepeatMode[] $VALUES;
    public static final RepeatMode Restart;

    static {
        RepeatMode repeatMode = new RepeatMode("Restart", 0);
        Restart = repeatMode;
        $VALUES = new RepeatMode[]{repeatMode, new RepeatMode("Reverse", 1)};
    }

    public static RepeatMode valueOf(String str) {
        return (RepeatMode) Enum.valueOf(RepeatMode.class, str);
    }

    public static RepeatMode[] values() {
        return (RepeatMode[]) $VALUES.clone();
    }
}
