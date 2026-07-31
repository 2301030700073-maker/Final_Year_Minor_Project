package coil3.size;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Precision {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Precision[] $VALUES;
    public static final Precision EXACT;
    public static final Precision INEXACT;

    static {
        Precision precision = new Precision("EXACT", 0);
        EXACT = precision;
        Precision precision2 = new Precision("INEXACT", 1);
        INEXACT = precision2;
        Precision[] precisionArr = {precision, precision2};
        $VALUES = precisionArr;
        $ENTRIES = new EnumEntriesList(precisionArr);
    }

    public static Precision valueOf(String str) {
        return (Precision) Enum.valueOf(Precision.class, str);
    }

    public static Precision[] values() {
        return (Precision[]) $VALUES.clone();
    }
}
