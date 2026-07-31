package kotlinx.datetime;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DayOfWeek {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DayOfWeek[] $VALUES;

    static {
        DayOfWeek[] dayOfWeekArr = {new DayOfWeek("MONDAY", 0), new DayOfWeek("TUESDAY", 1), new DayOfWeek("WEDNESDAY", 2), new DayOfWeek("THURSDAY", 3), new DayOfWeek("FRIDAY", 4), new DayOfWeek("SATURDAY", 5), new DayOfWeek("SUNDAY", 6)};
        $VALUES = dayOfWeekArr;
        $ENTRIES = new EnumEntriesList(dayOfWeekArr);
    }

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) $VALUES.clone();
    }
}
