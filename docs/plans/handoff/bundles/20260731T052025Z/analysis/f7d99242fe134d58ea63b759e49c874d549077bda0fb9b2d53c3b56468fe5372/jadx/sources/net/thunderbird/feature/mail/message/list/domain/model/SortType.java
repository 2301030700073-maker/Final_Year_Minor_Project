package net.thunderbird.feature.mail.message.list.domain.model;

import com.fsck.k9.R;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SortType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ SortType[] $VALUES;
    public static final SortType ArrivalAsc;
    public static final SortType ArrivalDesc;
    public static final SortType AttachmentAsc;
    public static final SortType AttachmentDesc;
    public static final SortType DateAsc;
    public static final SortType DateDesc;
    public static final SortType FlaggedAsc;
    public static final SortType FlaggedDesc;
    public static final SortType SenderAsc;
    public static final SortType SenderDesc;
    public static final SortType SubjectAsc;
    public static final SortType SubjectDesc;
    public static final SortType UnreadAsc;
    public static final SortType UnreadDesc;
    public final int labelResId;

    static {
        SortType sortType = new SortType("DateAsc", 0, R.string.sort_by_date_asc);
        DateAsc = sortType;
        SortType sortType2 = new SortType("DateDesc", 1, R.string.sort_by_date_desc);
        DateDesc = sortType2;
        SortType sortType3 = new SortType("ArrivalAsc", 2, R.string.sort_by_arrival_asc);
        ArrivalAsc = sortType3;
        SortType sortType4 = new SortType("ArrivalDesc", 3, R.string.sort_by_arrival_desc);
        ArrivalDesc = sortType4;
        SortType sortType5 = new SortType("SubjectAsc", 4, R.string.sort_by_subject_asc);
        SubjectAsc = sortType5;
        SortType sortType6 = new SortType("SubjectDesc", 5, R.string.sort_by_subject_desc);
        SubjectDesc = sortType6;
        SortType sortType7 = new SortType("SenderAsc", 6, R.string.sort_by_sender_asc);
        SenderAsc = sortType7;
        SortType sortType8 = new SortType("SenderDesc", 7, R.string.sort_by_sender_desc);
        SenderDesc = sortType8;
        SortType sortType9 = new SortType("FlaggedAsc", 8, R.string.sort_by_flag_asc);
        FlaggedAsc = sortType9;
        SortType sortType10 = new SortType("FlaggedDesc", 9, R.string.sort_by_flag_desc);
        FlaggedDesc = sortType10;
        SortType sortType11 = new SortType("UnreadAsc", 10, R.string.sort_by_unread_asc);
        UnreadAsc = sortType11;
        SortType sortType12 = new SortType("UnreadDesc", 11, R.string.sort_by_unread_desc);
        UnreadDesc = sortType12;
        SortType sortType13 = new SortType("AttachmentAsc", 12, R.string.sort_by_attach_asc);
        AttachmentAsc = sortType13;
        SortType sortType14 = new SortType("AttachmentDesc", 13, R.string.sort_by_attach_desc);
        AttachmentDesc = sortType14;
        SortType[] sortTypeArr = {sortType, sortType2, sortType3, sortType4, sortType5, sortType6, sortType7, sortType8, sortType9, sortType10, sortType11, sortType12, sortType13, sortType14};
        $VALUES = sortTypeArr;
        $ENTRIES = new EnumEntriesList(sortTypeArr);
    }

    public SortType(String str, int i, int i2) {
        this.labelResId = i2;
    }

    public static SortType valueOf(String str) {
        return (SortType) Enum.valueOf(SortType.class, str);
    }

    public static SortType[] values() {
        return (SortType[]) $VALUES.clone();
    }
}
