package coil3.request;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachePolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CachePolicy[] $VALUES;
    public static final CachePolicy DISABLED;
    public static final CachePolicy ENABLED;
    public static final CachePolicy READ_ONLY;
    public static final CachePolicy WRITE_ONLY;
    private final boolean readEnabled;
    private final boolean writeEnabled;

    static {
        CachePolicy cachePolicy = new CachePolicy("ENABLED", 0, true, true);
        ENABLED = cachePolicy;
        CachePolicy cachePolicy2 = new CachePolicy("READ_ONLY", 1, true, false);
        READ_ONLY = cachePolicy2;
        CachePolicy cachePolicy3 = new CachePolicy("WRITE_ONLY", 2, false, true);
        WRITE_ONLY = cachePolicy3;
        CachePolicy cachePolicy4 = new CachePolicy("DISABLED", 3, false, false);
        DISABLED = cachePolicy4;
        CachePolicy[] cachePolicyArr = {cachePolicy, cachePolicy2, cachePolicy3, cachePolicy4};
        $VALUES = cachePolicyArr;
        $ENTRIES = new EnumEntriesList(cachePolicyArr);
    }

    public CachePolicy(String str, int i, boolean z, boolean z2) {
        this.readEnabled = z;
        this.writeEnabled = z2;
    }

    public static CachePolicy valueOf(String str) {
        return (CachePolicy) Enum.valueOf(CachePolicy.class, str);
    }

    public static CachePolicy[] values() {
        return (CachePolicy[]) $VALUES.clone();
    }

    public final boolean getReadEnabled() {
        return this.readEnabled;
    }

    public final boolean getWriteEnabled() {
        return this.writeEnabled;
    }
}
