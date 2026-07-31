package com.skydoves.landscapist;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DataSource[] $VALUES;
    public static final DataSource MEMORY = new DataSource("MEMORY", 0);
    public static final DataSource DISK = new DataSource("DISK", 1);
    public static final DataSource NETWORK = new DataSource("NETWORK", 2);
    public static final DataSource LOCAL = new DataSource("LOCAL", 3);
    public static final DataSource RESOURCE = new DataSource("RESOURCE", 4);
    public static final DataSource INLINE = new DataSource("INLINE", 5);
    public static final DataSource UNKNOWN = new DataSource("UNKNOWN", 6);

    private static final /* synthetic */ DataSource[] $values() {
        return new DataSource[]{MEMORY, DISK, NETWORK, LOCAL, RESOURCE, INLINE, UNKNOWN};
    }

    static {
        DataSource[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private DataSource(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) $VALUES.clone();
    }
}
