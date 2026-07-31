package coil3.decode;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DataSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DataSource[] $VALUES;
    public static final DataSource DISK;
    public static final DataSource MEMORY;
    public static final DataSource MEMORY_CACHE;
    public static final DataSource NETWORK;

    static {
        DataSource dataSource = new DataSource("MEMORY_CACHE", 0);
        MEMORY_CACHE = dataSource;
        DataSource dataSource2 = new DataSource("MEMORY", 1);
        MEMORY = dataSource2;
        DataSource dataSource3 = new DataSource("DISK", 2);
        DISK = dataSource3;
        DataSource dataSource4 = new DataSource("NETWORK", 3);
        NETWORK = dataSource4;
        DataSource[] dataSourceArr = {dataSource, dataSource2, dataSource3, dataSource4};
        $VALUES = dataSourceArr;
        $ENTRIES = new EnumEntriesList(dataSourceArr);
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) $VALUES.clone();
    }
}
