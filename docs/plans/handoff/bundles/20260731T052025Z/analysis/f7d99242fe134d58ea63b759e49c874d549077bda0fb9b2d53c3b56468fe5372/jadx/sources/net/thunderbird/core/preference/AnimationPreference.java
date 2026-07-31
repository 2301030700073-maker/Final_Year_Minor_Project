package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimationPreference {
    public static final /* synthetic */ AnimationPreference[] $VALUES;
    public static final AnimationPreference FOLLOW_SYSTEM;
    public static final AnimationPreference OFF;
    public static final AnimationPreference ON;

    static {
        AnimationPreference animationPreference = new AnimationPreference("ON", 0);
        ON = animationPreference;
        AnimationPreference animationPreference2 = new AnimationPreference("OFF", 1);
        OFF = animationPreference2;
        AnimationPreference animationPreference3 = new AnimationPreference("FOLLOW_SYSTEM", 2);
        FOLLOW_SYSTEM = animationPreference3;
        $VALUES = new AnimationPreference[]{animationPreference, animationPreference2, animationPreference3};
    }

    public static AnimationPreference valueOf(String str) {
        return (AnimationPreference) Enum.valueOf(AnimationPreference.class, str);
    }

    public static AnimationPreference[] values() {
        return (AnimationPreference[]) $VALUES.clone();
    }
}
