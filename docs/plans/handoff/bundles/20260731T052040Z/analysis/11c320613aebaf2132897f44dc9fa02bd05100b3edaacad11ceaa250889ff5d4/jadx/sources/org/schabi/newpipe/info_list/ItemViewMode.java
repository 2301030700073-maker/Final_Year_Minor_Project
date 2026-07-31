package org.schabi.newpipe.info_list;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ItemViewMode {
    public static final /* synthetic */ ItemViewMode[] $VALUES;
    public static final ItemViewMode CARD;
    public static final ItemViewMode GRID;
    public static final ItemViewMode LIST;

    /* JADX INFO: Fake field, exist only in values array */
    ItemViewMode EF0;

    static {
        ItemViewMode itemViewMode = new ItemViewMode("AUTO", 0);
        ItemViewMode itemViewMode2 = new ItemViewMode("LIST", 1);
        LIST = itemViewMode2;
        ItemViewMode itemViewMode3 = new ItemViewMode("GRID", 2);
        GRID = itemViewMode3;
        ItemViewMode itemViewMode4 = new ItemViewMode("CARD", 3);
        CARD = itemViewMode4;
        $VALUES = new ItemViewMode[]{itemViewMode, itemViewMode2, itemViewMode3, itemViewMode4};
    }

    public static ItemViewMode valueOf(String str) {
        return (ItemViewMode) Enum.valueOf(ItemViewMode.class, str);
    }

    public static ItemViewMode[] values() {
        return (ItemViewMode[]) $VALUES.clone();
    }
}
