package androidx.compose.ui.node;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Invalidation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Invalidation[] $VALUES;
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
        Invalidation[] invalidationArr = {invalidation, invalidation2, invalidation3, invalidation4};
        $VALUES = invalidationArr;
        $ENTRIES = new EnumEntriesList(invalidationArr);
    }

    public static Invalidation valueOf(String str) {
        return (Invalidation) Enum.valueOf(Invalidation.class, str);
    }

    public static Invalidation[] values() {
        return (Invalidation[]) $VALUES.clone();
    }
}
