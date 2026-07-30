package defpackage;

/* loaded from: classes.dex */
public final class ME<E> implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    public static final Object f2140do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f2141do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f2142do;

    /* renamed from: for, reason: not valid java name */
    public int f2143for;

    public ME() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.f2141do = new int[i4];
        this.f2142do = new Object[i4];
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1397do(int i, E e) {
        int i2 = this.f2143for;
        if (i2 != 0 && i <= this.f2141do[i2 - 1]) {
            m1400new(i, e);
            return;
        }
        if (i2 >= this.f2141do.length) {
            int i3 = (i2 + 1) * 4;
            int i4 = 4;
            while (true) {
                if (i4 >= 32) {
                    break;
                }
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
                i4++;
            }
            int i6 = i3 / 4;
            int[] iArr = new int[i6];
            Object[] objArr = new Object[i6];
            int[] iArr2 = this.f2141do;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f2142do;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2141do = iArr;
            this.f2142do = objArr;
        }
        this.f2141do[i2] = i;
        this.f2142do[i2] = e;
        this.f2143for = i2 + 1;
    }

    /* renamed from: for, reason: not valid java name */
    public final Object m1398for(int i, Integer num) {
        Object obj;
        int m1166for = C0315Kc.m1166for(this.f2141do, this.f2143for, i);
        return (m1166for < 0 || (obj = this.f2142do[m1166for]) == f2140do) ? num : obj;
    }

    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final ME<E> clone() {
        try {
            ME<E> me = (ME) super.clone();
            me.f2141do = (int[]) this.f2141do.clone();
            me.f2142do = (Object[]) this.f2142do.clone();
            return me;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1400new(int i, E e) {
        int m1166for = C0315Kc.m1166for(this.f2141do, this.f2143for, i);
        if (m1166for >= 0) {
            this.f2142do[m1166for] = e;
            return;
        }
        int i2 = ~m1166for;
        int i3 = this.f2143for;
        if (i2 < i3) {
            Object[] objArr = this.f2142do;
            if (objArr[i2] == f2140do) {
                this.f2141do[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (i3 >= this.f2141do.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            int[] iArr = new int[i7];
            Object[] objArr2 = new Object[i7];
            int[] iArr2 = this.f2141do;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f2142do;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2141do = iArr;
            this.f2142do = objArr2;
        }
        int i8 = this.f2143for - i2;
        if (i8 != 0) {
            int[] iArr3 = this.f2141do;
            int i9 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i9, i8);
            Object[] objArr4 = this.f2142do;
            System.arraycopy(objArr4, i2, objArr4, i9, this.f2143for - i2);
        }
        this.f2141do[i2] = i;
        this.f2142do[i2] = e;
        this.f2143for++;
    }

    public final String toString() {
        int i = this.f2143for;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2143for; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(this.f2141do[i2]);
            sb.append('=');
            Object obj = this.f2142do[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
