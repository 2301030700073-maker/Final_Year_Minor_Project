package com.airbnb.lottie.configurations.reducemotion;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReducedMotionMode {
    private static final /* synthetic */ ReducedMotionMode[] $VALUES;
    public static final ReducedMotionMode REDUCED_MOTION;
    public static final ReducedMotionMode STANDARD_MOTION;

    static {
        ReducedMotionMode reducedMotionMode = new ReducedMotionMode("STANDARD_MOTION", 0);
        STANDARD_MOTION = reducedMotionMode;
        ReducedMotionMode reducedMotionMode2 = new ReducedMotionMode("REDUCED_MOTION", 1);
        REDUCED_MOTION = reducedMotionMode2;
        $VALUES = new ReducedMotionMode[]{reducedMotionMode, reducedMotionMode2};
    }

    public static ReducedMotionMode valueOf(String str) {
        return (ReducedMotionMode) Enum.valueOf(ReducedMotionMode.class, str);
    }

    public static ReducedMotionMode[] values() {
        return (ReducedMotionMode[]) $VALUES.clone();
    }
}
