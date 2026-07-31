package androidx.compose.material3.tokens;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MotionSchemeKeyTokens {
    public static final /* synthetic */ MotionSchemeKeyTokens[] $VALUES;
    public static final MotionSchemeKeyTokens DefaultEffects;
    public static final MotionSchemeKeyTokens DefaultSpatial;
    public static final MotionSchemeKeyTokens FastEffects;
    public static final MotionSchemeKeyTokens FastSpatial;

    static {
        MotionSchemeKeyTokens motionSchemeKeyTokens = new MotionSchemeKeyTokens("DefaultSpatial", 0);
        DefaultSpatial = motionSchemeKeyTokens;
        MotionSchemeKeyTokens motionSchemeKeyTokens2 = new MotionSchemeKeyTokens("FastSpatial", 1);
        FastSpatial = motionSchemeKeyTokens2;
        MotionSchemeKeyTokens motionSchemeKeyTokens3 = new MotionSchemeKeyTokens("SlowSpatial", 2);
        MotionSchemeKeyTokens motionSchemeKeyTokens4 = new MotionSchemeKeyTokens("DefaultEffects", 3);
        DefaultEffects = motionSchemeKeyTokens4;
        MotionSchemeKeyTokens motionSchemeKeyTokens5 = new MotionSchemeKeyTokens("FastEffects", 4);
        FastEffects = motionSchemeKeyTokens5;
        $VALUES = new MotionSchemeKeyTokens[]{motionSchemeKeyTokens, motionSchemeKeyTokens2, motionSchemeKeyTokens3, motionSchemeKeyTokens4, motionSchemeKeyTokens5, new MotionSchemeKeyTokens("SlowEffects", 5)};
    }

    public static MotionSchemeKeyTokens valueOf(String str) {
        return (MotionSchemeKeyTokens) Enum.valueOf(MotionSchemeKeyTokens.class, str);
    }

    public static MotionSchemeKeyTokens[] values() {
        return (MotionSchemeKeyTokens[]) $VALUES.clone();
    }
}
