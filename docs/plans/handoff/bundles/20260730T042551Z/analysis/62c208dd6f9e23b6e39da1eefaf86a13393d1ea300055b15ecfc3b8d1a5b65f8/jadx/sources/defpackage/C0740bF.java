package defpackage;

/* renamed from: bF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0740bF {

    /* renamed from: do, reason: not valid java name */
    public static final C0740bF f8345do = new C0740bF(BH.f222do, 0, 0, 0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f8346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BH f8347do;

    /* renamed from: for, reason: not valid java name */
    public final int f8348for;

    /* renamed from: if, reason: not valid java name */
    public final int f8349if;

    public C0740bF(BH bh, int i, int i2, int i3) {
        this.f8347do = bh;
        this.f8346do = i;
        this.f8349if = i2;
        this.f8348for = i3;
    }

    /* renamed from: do, reason: not valid java name */
    public final C0740bF m4815do(int i) {
        BH bh = this.f8347do;
        int i2 = this.f8346do;
        int i3 = this.f8348for;
        if (i2 == 4 || i2 == 2) {
            int[] iArr = C2828gm.f13207do[i2];
            i2 = 0;
            int i4 = iArr[0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            bh.getClass();
            i3 += i6;
            bh = new C2916iE(bh, i5, i6);
        }
        int i7 = this.f8349if;
        int i8 = (i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8;
        int i9 = i7 + 1;
        C0740bF c0740bF = new C0740bF(bh, i2, i9, i3 + i8);
        return i9 == 2078 ? c0740bF.m4817if(i + 1) : c0740bF;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m4816for(C0740bF c0740bF) {
        int i;
        int i2 = this.f8348for + (C2828gm.f13207do[this.f8346do][c0740bF.f8346do] >> 16);
        int i3 = c0740bF.f8349if;
        if (i3 > 0 && ((i = this.f8349if) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= c0740bF.f8348for;
    }

    /* renamed from: if, reason: not valid java name */
    public final C0740bF m4817if(int i) {
        int i2 = this.f8349if;
        if (i2 == 0) {
            return this;
        }
        BH bh = this.f8347do;
        bh.getClass();
        return new C0740bF(new C3781u5(bh, i - i2, i2), this.f8346do, 0, this.f8348for);
    }

    /* renamed from: new, reason: not valid java name */
    public final C0740bF m4818new(int i, int i2) {
        int i3 = this.f8348for;
        BH bh = this.f8347do;
        int i4 = this.f8346do;
        if (i != i4) {
            int i5 = C2828gm.f13207do[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            bh.getClass();
            i3 += i7;
            bh = new C2916iE(bh, i6, i7);
        }
        int i8 = i == 2 ? 4 : 5;
        bh.getClass();
        return new C0740bF(new C2916iE(bh, i2, i8), i, 0, i3 + i8);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", C2828gm.f13206do[this.f8346do], Integer.valueOf(this.f8348for), Integer.valueOf(this.f8349if));
    }

    /* renamed from: try, reason: not valid java name */
    public final C0740bF m4819try(int i, int i2) {
        int i3 = this.f8346do;
        int i4 = i3 == 2 ? 4 : 5;
        int i5 = C2828gm.f13208for[i3][i];
        BH bh = this.f8347do;
        bh.getClass();
        return new C0740bF(new C2916iE(new C2916iE(bh, i5, i4), i2, 5), i3, 0, this.f8348for + i4 + 5);
    }
}
