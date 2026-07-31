package kotlinx.datetime;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Month {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ Month[] $VALUES;

    static {
        Month[] monthArr = {new Month("JANUARY", 0), new Month("FEBRUARY", 1), new Month("MARCH", 2), new Month("APRIL", 3), new Month("MAY", 4), new Month("JUNE", 5), new Month("JULY", 6), new Month("AUGUST", 7), new Month("SEPTEMBER", 8), new Month("OCTOBER", 9), new Month("NOVEMBER", 10), new Month("DECEMBER", 11)};
        $VALUES = monthArr;
        $ENTRIES = new EnumEntriesList(monthArr);
    }

    public static Month valueOf(String str) {
        return (Month) Enum.valueOf(Month.class, str);
    }

    public static Month[] values() {
        return (Month[]) $VALUES.clone();
    }
}
