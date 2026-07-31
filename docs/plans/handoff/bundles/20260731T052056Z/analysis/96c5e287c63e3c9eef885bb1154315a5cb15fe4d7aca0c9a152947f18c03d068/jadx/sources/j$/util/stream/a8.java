package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class a8 {
    public static final a8 MAYBE_MORE;
    public static final a8 NO_MORE;
    public static final a8 UNLIMITED;
    public static final /* synthetic */ a8[] a;

    static {
        a8 a8Var = new a8("NO_MORE", 0);
        NO_MORE = a8Var;
        a8 a8Var2 = new a8("MAYBE_MORE", 1);
        MAYBE_MORE = a8Var2;
        a8 a8Var3 = new a8("UNLIMITED", 2);
        UNLIMITED = a8Var3;
        a = new a8[]{a8Var, a8Var2, a8Var3};
    }

    public static a8 valueOf(String str) {
        return (a8) Enum.valueOf(a8.class, str);
    }

    public static a8[] values() {
        return (a8[]) a.clone();
    }
}
