package j$.util.stream;

import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class d7 {
    public static final d7 DISTINCT;
    public static final d7 ORDERED;
    public static final d7 SHORT_CIRCUIT;
    public static final d7 SIZED;
    public static final d7 SORTED;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final /* synthetic */ d7[] v;
    public final Map a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    static {
        c7 c7Var = c7.SPLITERATOR;
        j$.desugar.sun.nio.fs.g F = F(c7Var);
        c7 c7Var2 = c7.STREAM;
        F.b(c7Var2);
        c7 c7Var3 = c7.OP;
        ((EnumMap) ((Map) F.b)).put((EnumMap) c7Var3, (c7) 3);
        d7 d7Var = new d7("DISTINCT", 0, 0, F);
        DISTINCT = d7Var;
        j$.desugar.sun.nio.fs.g F2 = F(c7Var);
        F2.b(c7Var2);
        ((EnumMap) ((Map) F2.b)).put((EnumMap) c7Var3, (c7) 3);
        d7 d7Var2 = new d7("SORTED", 1, 1, F2);
        SORTED = d7Var2;
        j$.desugar.sun.nio.fs.g F3 = F(c7Var);
        F3.b(c7Var2);
        ((EnumMap) ((Map) F3.b)).put((EnumMap) c7Var3, (c7) 3);
        c7 c7Var4 = c7.TERMINAL_OP;
        ((EnumMap) ((Map) F3.b)).put((EnumMap) c7Var4, (c7) 2);
        c7 c7Var5 = c7.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) F3.b)).put((EnumMap) c7Var5, (c7) 2);
        d7 d7Var3 = new d7("ORDERED", 2, 2, F3);
        ORDERED = d7Var3;
        j$.desugar.sun.nio.fs.g F4 = F(c7Var);
        F4.b(c7Var2);
        ((EnumMap) ((Map) F4.b)).put((EnumMap) c7Var3, (c7) 2);
        d7 d7Var4 = new d7("SIZED", 3, 3, F4);
        SIZED = d7Var4;
        j$.desugar.sun.nio.fs.g F5 = F(c7Var3);
        F5.b(c7Var4);
        int i2 = 0;
        d7 d7Var5 = new d7("SHORT_CIRCUIT", 4, 12, F5);
        SHORT_CIRCUIT = d7Var5;
        v = new d7[]{d7Var, d7Var2, d7Var3, d7Var4, d7Var5};
        f = n(c7Var);
        g = n(c7Var2);
        h = n(c7Var3);
        n(c7Var4);
        n(c7Var5);
        for (d7 d7Var6 : values()) {
            i2 |= d7Var6.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        d7 d7Var7 = DISTINCT;
        m = d7Var7.c;
        n = d7Var7.d;
        d7 d7Var8 = SORTED;
        o = d7Var8.c;
        p = d7Var8.d;
        d7 d7Var9 = ORDERED;
        q = d7Var9.c;
        r = d7Var9.d;
        d7 d7Var10 = SIZED;
        s = d7Var10.c;
        t = d7Var10.d;
        u = SHORT_CIRCUIT.c;
    }

    public d7(String str, int i2, int i3, j$.desugar.sun.nio.fs.g gVar) {
        for (c7 c7Var : c7.values()) {
            Map.EL.putIfAbsent((java.util.Map) gVar.b, c7Var, 0);
        }
        this.a = (java.util.Map) gVar.b;
        int i4 = i3 * 2;
        this.b = i4;
        this.c = 1 << i4;
        this.d = 2 << i4;
        this.e = 3 << i4;
    }

    public static j$.desugar.sun.nio.fs.g F(c7 c7Var) {
        j$.desugar.sun.nio.fs.g gVar = new j$.desugar.sun.nio.fs.g(17, new EnumMap(c7.class));
        gVar.b(c7Var);
        return gVar;
    }

    public static int k(int i2, int i3) {
        return i2 | (i3 & (i2 == 0 ? i : ~(((j & i2) << 1) | i2 | ((k & i2) >> 1))));
    }

    public static int n(c7 c7Var) {
        int i2 = 0;
        for (d7 d7Var : values()) {
            i2 |= ((Integer) d7Var.a.get(c7Var)).intValue() << d7Var.b;
        }
        return i2;
    }

    public static int o(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }

    public static d7 valueOf(String str) {
        return (d7) Enum.valueOf(d7.class, str);
    }

    public static d7[] values() {
        return (d7[]) v.clone();
    }

    public final boolean u(int i2) {
        return (i2 & this.e) == this.c;
    }
}
