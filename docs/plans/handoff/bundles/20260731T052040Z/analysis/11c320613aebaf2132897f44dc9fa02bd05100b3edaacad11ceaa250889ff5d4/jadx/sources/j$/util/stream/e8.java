package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class e8 {
    public static final e8 MAYBE_MORE;
    public static final e8 NO_MORE;
    public static final e8 UNLIMITED;
    public static final /* synthetic */ e8[] a;

    static {
        e8 e8Var = new e8("NO_MORE", 0);
        NO_MORE = e8Var;
        e8 e8Var2 = new e8("MAYBE_MORE", 1);
        MAYBE_MORE = e8Var2;
        e8 e8Var3 = new e8("UNLIMITED", 2);
        UNLIMITED = e8Var3;
        a = new e8[]{e8Var, e8Var2, e8Var3};
    }

    public static e8 valueOf(String str) {
        return (e8) Enum.valueOf(e8.class, str);
    }

    public static e8[] values() {
        return (e8[]) a.clone();
    }
}
