package defpackage;

/* renamed from: jG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3144jG {

    /* renamed from: do, reason: not valid java name */
    public static final C3144jG[] f13661do = {new C3144jG(false, 3, 5, 8, 8, 1), new C3144jG(false, 5, 7, 10, 10, 1), new C3144jG(true, 5, 7, 16, 6, 1), new C3144jG(false, 8, 10, 12, 12, 1), new C3144jG(true, 10, 11, 14, 6, 2), new C3144jG(false, 12, 12, 14, 14, 1), new C3144jG(true, 16, 14, 24, 10, 1), new C3144jG(false, 18, 14, 16, 16, 1), new C3144jG(false, 22, 18, 18, 18, 1), new C3144jG(true, 22, 18, 16, 10, 2), new C3144jG(false, 30, 20, 20, 20, 1), new C3144jG(true, 32, 24, 16, 14, 2), new C3144jG(false, 36, 24, 22, 22, 1), new C3144jG(false, 44, 28, 24, 24, 1), new C3144jG(true, 49, 28, 22, 14, 2), new C3144jG(false, 62, 36, 14, 14, 4), new C3144jG(false, 86, 42, 16, 16, 4), new C3144jG(false, 114, 48, 18, 18, 4), new C3144jG(false, 144, 56, 20, 20, 4), new C3144jG(false, 174, 68, 22, 22, 4), new C3144jG(204, 84, 24, 24, 4, 102, 42, false), new C3144jG(280, 112, 14, 14, 16, 140, 56, false), new C3144jG(368, 144, 16, 16, 16, 92, 36, false), new C3144jG(456, 192, 18, 18, 16, 114, 48, false), new C3144jG(576, 224, 20, 20, 16, 144, 56, false), new C3144jG(696, 272, 22, 22, 16, 174, 68, false), new C3144jG(816, 336, 24, 24, 16, 136, 56, false), new C3144jG(1050, 408, 18, 18, 36, 175, 68, false), new C3144jG(1304, 496, 20, 20, 36, 163, 62, false), new C0380Nc()};

    /* renamed from: case, reason: not valid java name */
    public final int f13662case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f13663do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f13664do;

    /* renamed from: else, reason: not valid java name */
    public final int f13665else;

    /* renamed from: for, reason: not valid java name */
    public final int f13666for;

    /* renamed from: if, reason: not valid java name */
    public final int f13667if;

    /* renamed from: new, reason: not valid java name */
    public final int f13668new;

    /* renamed from: try, reason: not valid java name */
    public final int f13669try;

    public C3144jG(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, i, i2, z);
    }

    /* renamed from: case, reason: not valid java name */
    public static C3144jG m7048case(int i, EnumC3203kG enumC3203kG, C3635re c3635re, C3635re c3635re2) {
        C3144jG[] c3144jGArr = f13661do;
        for (int i2 = 0; i2 < 30; i2++) {
            C3144jG c3144jG = c3144jGArr[i2];
            if (!(enumC3203kG == EnumC3203kG.FORCE_SQUARE && c3144jG.f13664do) && ((enumC3203kG != EnumC3203kG.FORCE_RECTANGLE || c3144jG.f13664do) && ((c3635re == null || (c3144jG.m7050new() >= 0 && (c3144jG.m7051try() * c3144jG.f13668new) + (c3144jG.m7051try() << 1) >= 0)) && ((c3635re2 == null || (c3144jG.m7050new() <= 0 && (c3144jG.m7051try() * c3144jG.f13668new) + (c3144jG.m7051try() << 1) <= 0)) && i <= c3144jG.f13663do)))) {
                return c3144jG;
            }
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
    }

    /* renamed from: do */
    public int mo1542do(int i) {
        return this.f13662case;
    }

    /* renamed from: for */
    public int mo1543for() {
        return this.f13663do / this.f13662case;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m7049if() {
        int i = 1;
        int i2 = this.f13669try;
        if (i2 != 1) {
            i = 2;
            if (i2 != 2 && i2 != 4) {
                if (i2 == 16) {
                    return 4;
                }
                if (i2 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m7050new() {
        return (m7049if() * this.f13666for) + (m7049if() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f13664do ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        int i = this.f13666for;
        sb.append(i);
        sb.append('x');
        int i2 = this.f13668new;
        sb.append(i2);
        sb.append(", symbol size ");
        sb.append(m7050new());
        sb.append('x');
        sb.append((m7051try() * i2) + (m7051try() << 1));
        sb.append(", symbol data size ");
        sb.append(m7049if() * i);
        sb.append('x');
        sb.append(m7051try() * i2);
        sb.append(", codewords ");
        sb.append(this.f13663do);
        sb.append('+');
        sb.append(this.f13667if);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m7051try() {
        int i = this.f13669try;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public C3144jG(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f13664do = z;
        this.f13663do = i;
        this.f13667if = i2;
        this.f13666for = i3;
        this.f13668new = i4;
        this.f13669try = i5;
        this.f13662case = i6;
        this.f13665else = i7;
    }
}
