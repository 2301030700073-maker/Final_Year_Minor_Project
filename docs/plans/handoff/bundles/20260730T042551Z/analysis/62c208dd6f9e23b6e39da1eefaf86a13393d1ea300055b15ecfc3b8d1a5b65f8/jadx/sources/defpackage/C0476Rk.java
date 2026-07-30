package defpackage;

/* renamed from: Rk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0476Rk {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f3230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0498Sk f3231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f3232do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f3233for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f3234if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f3235if;

    /* renamed from: do, reason: not valid java name */
    public static final C0476Rk f3225do = new C0476Rk(4201, 4096, 1);

    /* renamed from: if, reason: not valid java name */
    public static final C0476Rk f3227if = new C0476Rk(1033, 1024, 1);

    /* renamed from: for, reason: not valid java name */
    public static final C0476Rk f3226for = new C0476Rk(67, 64, 1);

    /* renamed from: new, reason: not valid java name */
    public static final C0476Rk f3228new = new C0476Rk(19, 16, 1);

    /* renamed from: try, reason: not valid java name */
    public static final C0476Rk f3229try = new C0476Rk(285, 256, 0);

    /* renamed from: case, reason: not valid java name */
    public static final C0476Rk f3224case = new C0476Rk(301, 256, 1);

    public C0476Rk(int i, int i2, int i3) {
        this.f3234if = i;
        this.f3230do = i2;
        this.f3233for = i3;
        this.f3232do = new int[i2];
        this.f3235if = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f3232do[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f3235if[this.f3232do[i6]] = i6;
        }
        this.f3231do = new C0498Sk(this, new int[]{0});
        new C0498Sk(this, new int[]{1});
    }

    /* renamed from: do, reason: not valid java name */
    public final int m2069do(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f3235if;
        return this.f3232do[(iArr[i] + iArr[i2]) % (this.f3230do - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f3234if) + ',' + this.f3230do + ')';
    }
}
