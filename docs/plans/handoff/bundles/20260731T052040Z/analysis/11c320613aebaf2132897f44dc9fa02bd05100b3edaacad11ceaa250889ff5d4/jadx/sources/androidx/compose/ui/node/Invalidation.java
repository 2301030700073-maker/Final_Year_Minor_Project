package androidx.compose.ui.node;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Invalidation {
    public static final /* synthetic */ Invalidation[] $VALUES;
    public static final Invalidation LookaheadMeasurement;
    public static final Invalidation LookaheadPlacement;
    public static final Invalidation Measurement;
    public static final Invalidation Placement;

    static {
        Invalidation invalidation = new Invalidation("LookaheadMeasurement", 0);
        LookaheadMeasurement = invalidation;
        Invalidation invalidation2 = new Invalidation("LookaheadPlacement", 1);
        LookaheadPlacement = invalidation2;
        Invalidation invalidation3 = new Invalidation("Measurement", 2);
        Measurement = invalidation3;
        Invalidation invalidation4 = new Invalidation("Placement", 3);
        Placement = invalidation4;
        $VALUES = new Invalidation[]{invalidation, invalidation2, invalidation3, invalidation4};
    }

    public static Invalidation valueOf(String str) {
        return (Invalidation) Enum.valueOf(Invalidation.class, str);
    }

    public static Invalidation[] values() {
        return (Invalidation[]) $VALUES.clone();
    }
}
