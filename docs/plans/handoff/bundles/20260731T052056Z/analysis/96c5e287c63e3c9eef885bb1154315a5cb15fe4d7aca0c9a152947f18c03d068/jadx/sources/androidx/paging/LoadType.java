package androidx.paging;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoadType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoadType[] $VALUES;
    public static final LoadType APPEND;
    public static final LoadType PREPEND;
    public static final LoadType REFRESH;

    static {
        LoadType loadType = new LoadType("REFRESH", 0);
        REFRESH = loadType;
        LoadType loadType2 = new LoadType("PREPEND", 1);
        PREPEND = loadType2;
        LoadType loadType3 = new LoadType("APPEND", 2);
        APPEND = loadType3;
        LoadType[] loadTypeArr = {loadType, loadType2, loadType3};
        $VALUES = loadTypeArr;
        $ENTRIES = new EnumEntriesList(loadTypeArr);
    }

    public static LoadType valueOf(String str) {
        return (LoadType) Enum.valueOf(LoadType.class, str);
    }

    public static LoadType[] values() {
        return (LoadType[]) $VALUES.clone();
    }
}
