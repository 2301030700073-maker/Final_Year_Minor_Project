package kotlin.reflect;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KParameter$Kind {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KParameter$Kind[] $VALUES;
    public static final KParameter$Kind CONTEXT;
    public static final KParameter$Kind EXTENSION_RECEIVER;
    public static final KParameter$Kind INSTANCE;
    public static final KParameter$Kind VALUE;

    static {
        KParameter$Kind kParameter$Kind = new KParameter$Kind("INSTANCE", 0);
        INSTANCE = kParameter$Kind;
        KParameter$Kind kParameter$Kind2 = new KParameter$Kind("CONTEXT", 1);
        CONTEXT = kParameter$Kind2;
        KParameter$Kind kParameter$Kind3 = new KParameter$Kind("EXTENSION_RECEIVER", 2);
        EXTENSION_RECEIVER = kParameter$Kind3;
        KParameter$Kind kParameter$Kind4 = new KParameter$Kind("VALUE", 3);
        VALUE = kParameter$Kind4;
        KParameter$Kind[] kParameter$KindArr = {kParameter$Kind, kParameter$Kind2, kParameter$Kind3, kParameter$Kind4};
        $VALUES = kParameter$KindArr;
        $ENTRIES = new EnumEntriesList(kParameter$KindArr);
    }

    public static KParameter$Kind valueOf(String str) {
        return (KParameter$Kind) Enum.valueOf(KParameter$Kind.class, str);
    }

    public static KParameter$Kind[] values() {
        return (KParameter$Kind[]) $VALUES.clone();
    }
}
