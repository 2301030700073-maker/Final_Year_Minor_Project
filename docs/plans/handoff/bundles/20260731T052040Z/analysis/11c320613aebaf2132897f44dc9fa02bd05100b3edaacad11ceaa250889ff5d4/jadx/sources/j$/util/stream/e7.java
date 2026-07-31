package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class e7 {
    public static final e7 DOUBLE_VALUE;
    public static final e7 INT_VALUE;
    public static final e7 LONG_VALUE;
    public static final e7 REFERENCE;
    public static final /* synthetic */ e7[] a;

    static {
        e7 e7Var = new e7("REFERENCE", 0);
        REFERENCE = e7Var;
        e7 e7Var2 = new e7("INT_VALUE", 1);
        INT_VALUE = e7Var2;
        e7 e7Var3 = new e7("LONG_VALUE", 2);
        LONG_VALUE = e7Var3;
        e7 e7Var4 = new e7("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = e7Var4;
        a = new e7[]{e7Var, e7Var2, e7Var3, e7Var4};
    }

    public static e7 valueOf(String str) {
        return (e7) Enum.valueOf(e7.class, str);
    }

    public static e7[] values() {
        return (e7[]) a.clone();
    }
}
