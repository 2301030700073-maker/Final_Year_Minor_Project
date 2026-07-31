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
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class z6 {
    public static final z6 DISTINCT;
    public static final z6 ORDERED;
    public static final z6 SHORT_CIRCUIT;
    public static final z6 SIZED;
    public static final z6 SORTED;
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
    public static final /* synthetic */ z6[] v;
    public final Map a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    static {
        y6 y6Var = y6.SPLITERATOR;
        j$.util.n k2 = k(y6Var);
        y6 y6Var2 = y6.STREAM;
        k2.a(y6Var2);
        y6 y6Var3 = y6.OP;
        ((EnumMap) ((Map) k2.b)).put((EnumMap) y6Var3, (y6) 3);
        z6 z6Var = new z6("DISTINCT", 0, 0, k2);
        DISTINCT = z6Var;
        j$.util.n k3 = k(y6Var);
        k3.a(y6Var2);
        ((EnumMap) ((Map) k3.b)).put((EnumMap) y6Var3, (y6) 3);
        z6 z6Var2 = new z6("SORTED", 1, 1, k3);
        SORTED = z6Var2;
        j$.util.n k4 = k(y6Var);
        k4.a(y6Var2);
        ((EnumMap) ((Map) k4.b)).put((EnumMap) y6Var3, (y6) 3);
        y6 y6Var4 = y6.TERMINAL_OP;
        ((EnumMap) ((Map) k4.b)).put((EnumMap) y6Var4, (y6) 2);
        y6 y6Var5 = y6.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) k4.b)).put((EnumMap) y6Var5, (y6) 2);
        z6 z6Var3 = new z6("ORDERED", 2, 2, k4);
        ORDERED = z6Var3;
        j$.util.n k5 = k(y6Var);
        k5.a(y6Var2);
        ((EnumMap) ((Map) k5.b)).put((EnumMap) y6Var3, (y6) 2);
        z6 z6Var4 = new z6("SIZED", 3, 3, k5);
        SIZED = z6Var4;
        j$.util.n k6 = k(y6Var3);
        k6.a(y6Var4);
        int i2 = 0;
        z6 z6Var5 = new z6("SHORT_CIRCUIT", 4, 12, k6);
        SHORT_CIRCUIT = z6Var5;
        v = new z6[]{z6Var, z6Var2, z6Var3, z6Var4, z6Var5};
        f = g(y6Var);
        g = g(y6Var2);
        h = g(y6Var3);
        g(y6Var4);
        g(y6Var5);
        for (z6 z6Var6 : values()) {
            i2 |= z6Var6.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        z6 z6Var7 = DISTINCT;
        m = z6Var7.c;
        n = z6Var7.d;
        z6 z6Var8 = SORTED;
        o = z6Var8.c;
        p = z6Var8.d;
        z6 z6Var9 = ORDERED;
        q = z6Var9.c;
        r = z6Var9.d;
        z6 z6Var10 = SIZED;
        s = z6Var10.c;
        t = z6Var10.d;
        u = SHORT_CIRCUIT.c;
    }

    public z6(String str, int i2, int i3, j$.util.n nVar) {
        for (y6 y6Var : y6.values()) {
            Map.EL.b((java.util.Map) nVar.b, y6Var, 0);
        }
        this.a = (java.util.Map) nVar.b;
        int i4 = i3 * 2;
        this.b = i4;
        this.c = 1 << i4;
        this.d = 2 << i4;
        this.e = 3 << i4;
    }

    public static int f(int i2, int i3) {
        return i2 | (i3 & (i2 == 0 ? i : ~(((j & i2) << 1) | i2 | ((k & i2) >> 1))));
    }

    public static int g(y6 y6Var) {
        int i2 = 0;
        for (z6 z6Var : values()) {
            i2 |= ((Integer) ((EnumMap) z6Var.a).get(y6Var)).intValue() << z6Var.b;
        }
        return i2;
    }

    public static int h(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }

    public static j$.util.n k(y6 y6Var) {
        j$.util.n nVar = new j$.util.n(10, new EnumMap(y6.class));
        nVar.a(y6Var);
        return nVar;
    }

    public static z6 valueOf(String str) {
        return (z6) Enum.valueOf(z6.class, str);
    }

    public static z6[] values() {
        return (z6[]) v.clone();
    }

    public final boolean i(int i2) {
        return (i2 & this.e) == this.c;
    }
}
