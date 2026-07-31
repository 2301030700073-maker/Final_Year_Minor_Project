package net.thunderbird.core.android.account;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SortType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ SortType[] $VALUES;
    public static final SortType SORT_ARRIVAL;
    public static final SortType SORT_ATTACHMENT;
    public static final SortType SORT_DATE;
    public static final SortType SORT_FLAGGED;
    public static final SortType SORT_SENDER;
    public static final SortType SORT_SUBJECT;
    public static final SortType SORT_UNREAD;
    public final boolean isDefaultAscending;

    static {
        SortType sortType = new SortType(0, "SORT_DATE", false);
        SORT_DATE = sortType;
        SortType sortType2 = new SortType(1, "SORT_ARRIVAL", false);
        SORT_ARRIVAL = sortType2;
        SortType sortType3 = new SortType(2, "SORT_SUBJECT", true);
        SORT_SUBJECT = sortType3;
        SortType sortType4 = new SortType(3, "SORT_SENDER", true);
        SORT_SENDER = sortType4;
        SortType sortType5 = new SortType(4, "SORT_UNREAD", true);
        SORT_UNREAD = sortType5;
        SortType sortType6 = new SortType(5, "SORT_FLAGGED", true);
        SORT_FLAGGED = sortType6;
        SortType sortType7 = new SortType(6, "SORT_ATTACHMENT", true);
        SORT_ATTACHMENT = sortType7;
        SortType[] sortTypeArr = {sortType, sortType2, sortType3, sortType4, sortType5, sortType6, sortType7};
        $VALUES = sortTypeArr;
        $ENTRIES = new EnumEntriesList(sortTypeArr);
    }

    public SortType(int i, String str, boolean z) {
        this.isDefaultAscending = z;
    }

    public static SortType valueOf(String str) {
        return (SortType) Enum.valueOf(SortType.class, str);
    }

    public static SortType[] values() {
        return (SortType[]) $VALUES.clone();
    }
}
