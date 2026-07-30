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
/* renamed from: j$.util.stream.g3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class EnumC3026g3 {
    public static final EnumC3026g3 DISTINCT;
    public static final EnumC3026g3 ORDERED;
    public static final EnumC3026g3 SHORT_CIRCUIT;
    public static final EnumC3026g3 SIZED;
    public static final EnumC3026g3 SORTED;
    static final int f;
    static final int g;
    static final int h;
    private static final int i;
    private static final int j;
    private static final int k;
    static final int l;
    static final int m;
    static final int n;
    static final int o;
    static final int p;
    static final int q;
    static final int r;
    static final int s;
    static final int t;
    static final int u;
    private static final /* synthetic */ EnumC3026g3[] v;
    private final Map a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;

    static {
        EnumC3021f3 enumC3021f3 = EnumC3021f3.SPLITERATOR;
        C3016e3 v2 = v(enumC3021f3);
        EnumC3021f3 enumC3021f32 = EnumC3021f3.STREAM;
        v2.a(enumC3021f32);
        EnumC3021f3 enumC3021f33 = EnumC3021f3.OP;
        v2.a.put(enumC3021f33, 3);
        EnumC3026g3 enumC3026g3 = new EnumC3026g3("DISTINCT", 0, 0, v2);
        DISTINCT = enumC3026g3;
        C3016e3 v3 = v(enumC3021f3);
        v3.a(enumC3021f32);
        v3.a.put(enumC3021f33, 3);
        EnumC3026g3 enumC3026g32 = new EnumC3026g3("SORTED", 1, 1, v3);
        SORTED = enumC3026g32;
        C3016e3 v4 = v(enumC3021f3);
        v4.a(enumC3021f32);
        Map map = v4.a;
        map.put(enumC3021f33, 3);
        EnumC3021f3 enumC3021f34 = EnumC3021f3.TERMINAL_OP;
        map.put(enumC3021f34, 2);
        EnumC3021f3 enumC3021f35 = EnumC3021f3.UPSTREAM_TERMINAL_OP;
        map.put(enumC3021f35, 2);
        EnumC3026g3 enumC3026g33 = new EnumC3026g3("ORDERED", 2, 2, v4);
        ORDERED = enumC3026g33;
        C3016e3 v5 = v(enumC3021f3);
        v5.a(enumC3021f32);
        v5.a.put(enumC3021f33, 2);
        EnumC3026g3 enumC3026g34 = new EnumC3026g3("SIZED", 3, 3, v5);
        SIZED = enumC3026g34;
        C3016e3 v6 = v(enumC3021f33);
        v6.a(enumC3021f34);
        EnumC3026g3 enumC3026g35 = new EnumC3026g3("SHORT_CIRCUIT", 4, 12, v6);
        SHORT_CIRCUIT = enumC3026g35;
        v = new EnumC3026g3[]{enumC3026g3, enumC3026g32, enumC3026g33, enumC3026g34, enumC3026g35};
        f = j(enumC3021f3);
        g = j(enumC3021f32);
        h = j(enumC3021f33);
        j(enumC3021f34);
        j(enumC3021f35);
        int i2 = 0;
        for (EnumC3026g3 enumC3026g36 : values()) {
            i2 |= enumC3026g36.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        EnumC3026g3 enumC3026g37 = DISTINCT;
        m = enumC3026g37.c;
        n = enumC3026g37.d;
        EnumC3026g3 enumC3026g38 = SORTED;
        o = enumC3026g38.c;
        p = enumC3026g38.d;
        EnumC3026g3 enumC3026g39 = ORDERED;
        q = enumC3026g39.c;
        r = enumC3026g39.d;
        EnumC3026g3 enumC3026g310 = SIZED;
        s = enumC3026g310.c;
        t = enumC3026g310.d;
        u = SHORT_CIRCUIT.c;
    }

    private EnumC3026g3(String str, int i2, int i3, C3016e3 c3016e3) {
        EnumC3021f3[] values = EnumC3021f3.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            Map map = c3016e3.a;
            if (i4 >= length) {
                this.a = map;
                int i5 = i3 * 2;
                this.b = i5;
                this.c = 1 << i5;
                this.d = 2 << i5;
                this.e = 3 << i5;
                return;
            }
            Map.EL.b(map, values[i4], 0);
            i4++;
        }
    }

    static int i(int i2, int i3) {
        return i2 | (i3 & (i2 == 0 ? i : ~(((j & i2) << 1) | i2 | ((k & i2) >> 1))));
    }

    private static int j(EnumC3021f3 enumC3021f3) {
        int i2 = 0;
        for (EnumC3026g3 enumC3026g3 : values()) {
            i2 |= ((Integer) enumC3026g3.a.get(enumC3021f3)).intValue() << enumC3026g3.b;
        }
        return i2;
    }

    static int k(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }

    private static C3016e3 v(EnumC3021f3 enumC3021f3) {
        C3016e3 c3016e3 = new C3016e3(new EnumMap(EnumC3021f3.class));
        c3016e3.a(enumC3021f3);
        return c3016e3;
    }

    public static EnumC3026g3 valueOf(String str) {
        return (EnumC3026g3) Enum.valueOf(EnumC3026g3.class, str);
    }

    public static EnumC3026g3[] values() {
        return (EnumC3026g3[]) v.clone();
    }

    static int y(int i2) {
        return i2 & ((~i2) >> 1) & j;
    }

    final boolean n(int i2) {
        return (i2 & this.e) == this.c;
    }

    final boolean r(int i2) {
        int i3 = this.e;
        return (i2 & i3) == i3;
    }
}
