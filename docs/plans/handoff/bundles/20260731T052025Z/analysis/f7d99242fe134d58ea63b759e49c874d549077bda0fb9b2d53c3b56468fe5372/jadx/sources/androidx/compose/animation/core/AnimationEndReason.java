package androidx.compose.animation.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimationEndReason {
    public static final /* synthetic */ AnimationEndReason[] $VALUES;
    public static final AnimationEndReason BoundReached;
    public static final AnimationEndReason Finished;

    static {
        AnimationEndReason animationEndReason = new AnimationEndReason("BoundReached", 0);
        BoundReached = animationEndReason;
        AnimationEndReason animationEndReason2 = new AnimationEndReason("Finished", 1);
        Finished = animationEndReason2;
        $VALUES = new AnimationEndReason[]{animationEndReason, animationEndReason2};
    }

    public static AnimationEndReason valueOf(String str) {
        return (AnimationEndReason) Enum.valueOf(AnimationEndReason.class, str);
    }

    public static AnimationEndReason[] values() {
        return (AnimationEndReason[]) $VALUES.clone();
    }
}
