package defpackage;

import java.util.Iterator;

/* renamed from: to, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3763to implements Iterable<Integer>, InterfaceC3941wp {

    /* renamed from: for, reason: not valid java name */
    public final int f15768for;

    /* renamed from: new, reason: not valid java name */
    public final int f15769new;

    /* renamed from: try, reason: not valid java name */
    public final int f15770try;

    public C3763to(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f15768for = i;
        if (i3 > 0) {
            if (i < i2) {
                int i4 = i2 % i3;
                int i5 = i % i3;
                int i6 = ((i4 < 0 ? i4 + i3 : i4) - (i5 < 0 ? i5 + i3 : i5)) % i3;
                i2 -= i6 < 0 ? i6 + i3 : i6;
            }
        } else {
            if (i3 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i > i2) {
                int i7 = -i3;
                int i8 = i % i7;
                int i9 = i2 % i7;
                int i10 = ((i8 < 0 ? i8 + i7 : i8) - (i9 < 0 ? i9 + i7 : i9)) % i7;
                i2 += i10 < 0 ? i10 + i7 : i10;
            }
        }
        this.f15769new = i2;
        this.f15770try = i3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C3763to) {
            if (!isEmpty() || !((C3763to) obj).isEmpty()) {
                C3763to c3763to = (C3763to) obj;
                if (this.f15768for != c3763to.f15768for || this.f15769new != c3763to.f15769new || this.f15770try != c3763to.f15770try) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f15768for * 31) + this.f15769new) * 31) + this.f15770try;
    }

    public boolean isEmpty() {
        int i = this.f15770try;
        int i2 = this.f15769new;
        int i3 = this.f15768for;
        if (i > 0) {
            if (i3 > i2) {
                return true;
            }
        } else if (i3 < i2) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<Integer> iterator() {
        return new C3822uo(this.f15768for, this.f15769new, this.f15770try);
    }

    public String toString() {
        StringBuilder sb;
        int i = this.f15769new;
        int i2 = this.f15768for;
        int i3 = this.f15770try;
        if (i3 > 0) {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i3);
        } else {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i3);
        }
        return sb.toString();
    }
}
