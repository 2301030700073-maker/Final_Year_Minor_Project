package defpackage;

/* renamed from: mr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3354mr<E> implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    public static final Object f14403do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14404do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long[] f14405do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f14406do;

    /* renamed from: for, reason: not valid java name */
    public int f14407for;

    public C3354mr() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.f14405do = new long[i4];
        this.f14406do = new Object[i4];
    }

    /* renamed from: case, reason: not valid java name */
    public final void m7467case(long j, E e) {
        int m1155case = C0315Kc.m1155case(this.f14405do, this.f14407for, j);
        if (m1155case >= 0) {
            this.f14406do[m1155case] = e;
            return;
        }
        int i = ~m1155case;
        int i2 = this.f14407for;
        if (i < i2) {
            Object[] objArr = this.f14406do;
            if (objArr[i] == f14403do) {
                this.f14405do[i] = j;
                objArr[i] = e;
                return;
            }
        }
        if (this.f14404do && i2 >= this.f14405do.length) {
            m7472new();
            i = ~C0315Kc.m1155case(this.f14405do, this.f14407for, j);
        }
        int i3 = this.f14407for;
        if (i3 >= this.f14405do.length) {
            int i4 = (i3 + 1) * 8;
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
            int i7 = i4 / 8;
            long[] jArr = new long[i7];
            Object[] objArr2 = new Object[i7];
            long[] jArr2 = this.f14405do;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f14406do;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f14405do = jArr;
            this.f14406do = objArr2;
        }
        int i8 = this.f14407for - i;
        if (i8 != 0) {
            long[] jArr3 = this.f14405do;
            int i9 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i9, i8);
            Object[] objArr4 = this.f14406do;
            System.arraycopy(objArr4, i, objArr4, i9, this.f14407for - i);
        }
        this.f14405do[i] = j;
        this.f14406do[i] = e;
        this.f14407for++;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7468do(long j, Long l) {
        int i = this.f14407for;
        if (i != 0 && j <= this.f14405do[i - 1]) {
            m7467case(j, l);
            return;
        }
        if (this.f14404do && i >= this.f14405do.length) {
            m7472new();
        }
        int i2 = this.f14407for;
        if (i2 >= this.f14405do.length) {
            int i3 = (i2 + 1) * 8;
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
            int i6 = i3 / 8;
            long[] jArr = new long[i6];
            Object[] objArr = new Object[i6];
            long[] jArr2 = this.f14405do;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f14406do;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f14405do = jArr;
            this.f14406do = objArr;
        }
        this.f14405do[i2] = j;
        this.f14406do[i2] = l;
        this.f14407for = i2 + 1;
    }

    /* renamed from: else, reason: not valid java name */
    public final E m7469else(int i) {
        if (this.f14404do) {
            m7472new();
        }
        return (E) this.f14406do[i];
    }

    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final C3354mr<E> clone() {
        try {
            C3354mr<E> c3354mr = (C3354mr) super.clone();
            c3354mr.f14405do = (long[]) this.f14405do.clone();
            c3354mr.f14406do = (Object[]) this.f14406do.clone();
            return c3354mr;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7471if() {
        int i = this.f14407for;
        Object[] objArr = this.f14406do;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f14407for = 0;
        this.f14404do = false;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7472new() {
        int i = this.f14407for;
        long[] jArr = this.f14405do;
        Object[] objArr = this.f14406do;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f14403do) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f14404do = false;
        this.f14407for = i2;
    }

    public final String toString() {
        if (this.f14404do) {
            m7472new();
        }
        int i = this.f14407for;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f14407for; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.f14404do) {
                m7472new();
            }
            sb.append(this.f14405do[i2]);
            sb.append('=');
            E m7469else = m7469else(i2);
            if (m7469else != this) {
                sb.append(m7469else);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final Object m7473try(long j, Long l) {
        Object obj;
        int m1155case = C0315Kc.m1155case(this.f14405do, this.f14407for, j);
        return (m1155case < 0 || (obj = this.f14406do[m1155case]) == f14403do) ? l : obj;
    }
}
