package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class y6 {
    public static final y6 OP;
    public static final y6 SPLITERATOR;
    public static final y6 STREAM;
    public static final y6 TERMINAL_OP;
    public static final y6 UPSTREAM_TERMINAL_OP;
    public static final /* synthetic */ y6[] a;

    static {
        y6 y6Var = new y6("SPLITERATOR", 0);
        SPLITERATOR = y6Var;
        y6 y6Var2 = new y6("STREAM", 1);
        STREAM = y6Var2;
        y6 y6Var3 = new y6("OP", 2);
        OP = y6Var3;
        y6 y6Var4 = new y6("TERMINAL_OP", 3);
        TERMINAL_OP = y6Var4;
        y6 y6Var5 = new y6("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = y6Var5;
        a = new y6[]{y6Var, y6Var2, y6Var3, y6Var4, y6Var5};
    }

    public static y6 valueOf(String str) {
        return (y6) Enum.valueOf(y6.class, str);
    }

    public static y6[] values() {
        return (y6[]) a.clone();
    }
}
