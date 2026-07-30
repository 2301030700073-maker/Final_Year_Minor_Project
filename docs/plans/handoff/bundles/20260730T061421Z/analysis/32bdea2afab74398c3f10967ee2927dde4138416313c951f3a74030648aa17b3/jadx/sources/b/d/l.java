package b.d;

/* loaded from: classes.dex */
public class l implements Cloneable {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f645a = false;

    /* renamed from: b, reason: collision with root package name */
    public long[] f646b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f647c;

    /* renamed from: d, reason: collision with root package name */
    public int f648d;

    public l() {
        int f = j.f(10);
        this.f646b = new long[f];
        this.f647c = new Object[f];
    }

    public void a() {
        int i = this.f648d;
        Object[] objArr = this.f647c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f648d = 0;
        this.f645a = false;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public l clone() {
        try {
            l lVar = (l) super.clone();
            lVar.f646b = (long[]) this.f646b.clone();
            lVar.f647c = (Object[]) this.f647c.clone();
            return lVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void c() {
        int i = this.f648d;
        long[] jArr = this.f646b;
        Object[] objArr = this.f647c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f645a = false;
        this.f648d = i2;
    }

    public Object d(long j, Object obj) {
        int b2 = j.b(this.f646b, this.f648d, j);
        if (b2 >= 0) {
            Object[] objArr = this.f647c;
            if (objArr[b2] != e) {
                return objArr[b2];
            }
        }
        return obj;
    }

    public void e(long j, Object obj) {
        int b2 = j.b(this.f646b, this.f648d, j);
        if (b2 >= 0) {
            this.f647c[b2] = obj;
            return;
        }
        int i = ~b2;
        if (i < this.f648d) {
            Object[] objArr = this.f647c;
            if (objArr[i] == e) {
                this.f646b[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.f645a && this.f648d >= this.f646b.length) {
            c();
            i = ~j.b(this.f646b, this.f648d, j);
        }
        int i2 = this.f648d;
        if (i2 >= this.f646b.length) {
            int f = j.f(i2 + 1);
            long[] jArr = new long[f];
            Object[] objArr2 = new Object[f];
            long[] jArr2 = this.f646b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f647c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f646b = jArr;
            this.f647c = objArr2;
        }
        int i3 = this.f648d;
        if (i3 - i != 0) {
            long[] jArr3 = this.f646b;
            int i4 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i4, i3 - i);
            Object[] objArr4 = this.f647c;
            System.arraycopy(objArr4, i, objArr4, i4, this.f648d - i);
        }
        this.f646b[i] = j;
        this.f647c[i] = obj;
        this.f648d++;
    }

    public String toString() {
        if (this.f645a) {
            c();
        }
        int i = this.f648d;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f648d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.f645a) {
                c();
            }
            sb.append(this.f646b[i2]);
            sb.append('=');
            if (this.f645a) {
                c();
            }
            Object obj = this.f647c[i2];
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
