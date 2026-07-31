package kotlinx.datetime.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Padding {
    public static final /* synthetic */ Padding[] $VALUES;
    public static final Padding SPACE;
    public static final Padding ZERO;

    /* JADX INFO: Fake field, exist only in values array */
    Padding EF0;

    static {
        Padding padding = new Padding("NONE", 0);
        Padding padding2 = new Padding("ZERO", 1);
        ZERO = padding2;
        Padding padding3 = new Padding("SPACE", 2);
        SPACE = padding3;
        $VALUES = new Padding[]{padding, padding2, padding3};
    }

    public static Padding valueOf(String str) {
        return (Padding) Enum.valueOf(Padding.class, str);
    }

    public static Padding[] values() {
        return (Padding[]) $VALUES.clone();
    }
}
