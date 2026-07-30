package defpackage;

import android.graphics.Insets;

/* renamed from: Yn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0633Yn {

    /* renamed from: do, reason: not valid java name */
    public static final C0633Yn f4757do = new C0633Yn(0, 0, 0, 0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f4758do;

    /* renamed from: for, reason: not valid java name */
    public final int f4759for;

    /* renamed from: if, reason: not valid java name */
    public final int f4760if;

    /* renamed from: new, reason: not valid java name */
    public final int f4761new;

    /* renamed from: Yn$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Insets m2953do(int i, int i2, int i3, int i4) {
            Insets of;
            of = Insets.of(i, i2, i3, i4);
            return of;
        }
    }

    public C0633Yn(int i, int i2, int i3, int i4) {
        this.f4758do = i;
        this.f4760if = i2;
        this.f4759for = i3;
        this.f4761new = i4;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0633Yn m2949do(C0633Yn c0633Yn, C0633Yn c0633Yn2) {
        return m2951if(Math.max(c0633Yn.f4758do, c0633Yn2.f4758do), Math.max(c0633Yn.f4760if, c0633Yn2.f4760if), Math.max(c0633Yn.f4759for, c0633Yn2.f4759for), Math.max(c0633Yn.f4761new, c0633Yn2.f4761new));
    }

    /* renamed from: for, reason: not valid java name */
    public static C0633Yn m2950for(Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return m2951if(i, i2, i3, i4);
    }

    /* renamed from: if, reason: not valid java name */
    public static C0633Yn m2951if(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f4757do : new C0633Yn(i, i2, i3, i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0633Yn.class != obj.getClass()) {
            return false;
        }
        C0633Yn c0633Yn = (C0633Yn) obj;
        return this.f4761new == c0633Yn.f4761new && this.f4758do == c0633Yn.f4758do && this.f4759for == c0633Yn.f4759for && this.f4760if == c0633Yn.f4760if;
    }

    public final int hashCode() {
        return (((((this.f4758do * 31) + this.f4760if) * 31) + this.f4759for) * 31) + this.f4761new;
    }

    /* renamed from: new, reason: not valid java name */
    public final Insets m2952new() {
        return Cdo.m2953do(this.f4758do, this.f4760if, this.f4759for, this.f4761new);
    }

    public final String toString() {
        return "Insets{left=" + this.f4758do + ", top=" + this.f4760if + ", right=" + this.f4759for + ", bottom=" + this.f4761new + '}';
    }
}
