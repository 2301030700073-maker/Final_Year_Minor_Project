package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class a7 {
    public static final a7 DOUBLE_VALUE;
    public static final a7 INT_VALUE;
    public static final a7 LONG_VALUE;
    public static final a7 REFERENCE;
    public static final /* synthetic */ a7[] a;

    static {
        a7 a7Var = new a7("REFERENCE", 0);
        REFERENCE = a7Var;
        a7 a7Var2 = new a7("INT_VALUE", 1);
        INT_VALUE = a7Var2;
        a7 a7Var3 = new a7("LONG_VALUE", 2);
        LONG_VALUE = a7Var3;
        a7 a7Var4 = new a7("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = a7Var4;
        a = new a7[]{a7Var, a7Var2, a7Var3, a7Var4};
    }

    public static a7 valueOf(String str) {
        return (a7) Enum.valueOf(a7.class, str);
    }

    public static a7[] values() {
        return (a7[]) a.clone();
    }
}
