package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class c7 {
    public static final c7 OP;
    public static final c7 SPLITERATOR;
    public static final c7 STREAM;
    public static final c7 TERMINAL_OP;
    public static final c7 UPSTREAM_TERMINAL_OP;
    public static final /* synthetic */ c7[] a;

    static {
        c7 c7Var = new c7("SPLITERATOR", 0);
        SPLITERATOR = c7Var;
        c7 c7Var2 = new c7("STREAM", 1);
        STREAM = c7Var2;
        c7 c7Var3 = new c7("OP", 2);
        OP = c7Var3;
        c7 c7Var4 = new c7("TERMINAL_OP", 3);
        TERMINAL_OP = c7Var4;
        c7 c7Var5 = new c7("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = c7Var5;
        a = new c7[]{c7Var, c7Var2, c7Var3, c7Var4, c7Var5};
    }

    public static c7 valueOf(String str) {
        return (c7) Enum.valueOf(c7.class, str);
    }

    public static c7[] values() {
        return (c7[]) a.clone();
    }
}
