package androidx.compose.ui.input.pointer.util;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VelocityTracker1D$Strategy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VelocityTracker1D$Strategy[] $VALUES;
    public static final VelocityTracker1D$Strategy Impulse;
    public static final VelocityTracker1D$Strategy Lsq2;

    static {
        VelocityTracker1D$Strategy velocityTracker1D$Strategy = new VelocityTracker1D$Strategy("Lsq2", 0);
        Lsq2 = velocityTracker1D$Strategy;
        VelocityTracker1D$Strategy velocityTracker1D$Strategy2 = new VelocityTracker1D$Strategy("Impulse", 1);
        Impulse = velocityTracker1D$Strategy2;
        VelocityTracker1D$Strategy[] velocityTracker1D$StrategyArr = {velocityTracker1D$Strategy, velocityTracker1D$Strategy2};
        $VALUES = velocityTracker1D$StrategyArr;
        $ENTRIES = new EnumEntriesList(velocityTracker1D$StrategyArr);
    }

    public static VelocityTracker1D$Strategy valueOf(String str) {
        return (VelocityTracker1D$Strategy) Enum.valueOf(VelocityTracker1D$Strategy.class, str);
    }

    public static VelocityTracker1D$Strategy[] values() {
        return (VelocityTracker1D$Strategy[]) $VALUES.clone();
    }
}
