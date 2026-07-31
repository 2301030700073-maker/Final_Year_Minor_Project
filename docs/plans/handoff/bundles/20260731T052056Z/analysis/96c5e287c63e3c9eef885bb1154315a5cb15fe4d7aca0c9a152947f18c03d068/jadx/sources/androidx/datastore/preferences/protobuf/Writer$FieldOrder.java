package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Writer$FieldOrder {
    private static final /* synthetic */ Writer$FieldOrder[] $VALUES;
    public static final Writer$FieldOrder ASCENDING;
    public static final Writer$FieldOrder DESCENDING;

    static {
        Writer$FieldOrder writer$FieldOrder = new Writer$FieldOrder("ASCENDING", 0);
        ASCENDING = writer$FieldOrder;
        Writer$FieldOrder writer$FieldOrder2 = new Writer$FieldOrder("DESCENDING", 1);
        DESCENDING = writer$FieldOrder2;
        $VALUES = new Writer$FieldOrder[]{writer$FieldOrder, writer$FieldOrder2};
    }

    public static Writer$FieldOrder valueOf(String str) {
        return (Writer$FieldOrder) Enum.valueOf(Writer$FieldOrder.class, str);
    }

    public static Writer$FieldOrder[] values() {
        return (Writer$FieldOrder[]) $VALUES.clone();
    }
}
