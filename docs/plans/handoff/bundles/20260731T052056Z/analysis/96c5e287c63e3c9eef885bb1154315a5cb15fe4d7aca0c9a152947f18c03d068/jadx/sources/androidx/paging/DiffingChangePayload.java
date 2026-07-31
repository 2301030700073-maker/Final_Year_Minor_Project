package androidx.paging;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiffingChangePayload {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DiffingChangePayload[] $VALUES;
    public static final DiffingChangePayload ITEM_TO_PLACEHOLDER;
    public static final DiffingChangePayload PLACEHOLDER_POSITION_CHANGE;
    public static final DiffingChangePayload PLACEHOLDER_TO_ITEM;

    static {
        DiffingChangePayload diffingChangePayload = new DiffingChangePayload("ITEM_TO_PLACEHOLDER", 0);
        ITEM_TO_PLACEHOLDER = diffingChangePayload;
        DiffingChangePayload diffingChangePayload2 = new DiffingChangePayload("PLACEHOLDER_TO_ITEM", 1);
        PLACEHOLDER_TO_ITEM = diffingChangePayload2;
        DiffingChangePayload diffingChangePayload3 = new DiffingChangePayload("PLACEHOLDER_POSITION_CHANGE", 2);
        PLACEHOLDER_POSITION_CHANGE = diffingChangePayload3;
        DiffingChangePayload[] diffingChangePayloadArr = {diffingChangePayload, diffingChangePayload2, diffingChangePayload3};
        $VALUES = diffingChangePayloadArr;
        $ENTRIES = new EnumEntriesList(diffingChangePayloadArr);
    }

    public static DiffingChangePayload valueOf(String str) {
        return (DiffingChangePayload) Enum.valueOf(DiffingChangePayload.class, str);
    }

    public static DiffingChangePayload[] values() {
        return (DiffingChangePayload[]) $VALUES.clone();
    }
}
