package b.d;

/* loaded from: classes.dex */
public class o implements Cloneable {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f657a = false;

    /* renamed from: b, reason: collision with root package name */
    public int[] f658b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f659c;

    /* renamed from: d, reason: collision with root package name */
    public int f660d;

    public o() {
        int e2 = j.e(10);
        this.f658b = new int[e2];
        this.f659c = new Object[e2];
    }

    public void a(int i, Object obj) {
        int i2 = this.f660d;
        if (i2 != 0 && i <= this.f658b[i2 - 1]) {
            g(i, obj);
            return;
        }
        int i3 = this.f660d;
        if (i3 >= this.f658b.length) {
            int e2 = j.e(i3 + 1);
            int[] iArr = new int[e2];
            Object[] objArr = new Object[e2];
            int[] iArr2 = this.f658b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f659c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f658b = iArr;
            this.f659c = objArr;
        }
        this.f658b[i3] = i;
        this.f659c[i3] = obj;
        this.f660d = i3 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public o clone() {
        try {
            o oVar = (o) super.clone();
            oVar.f658b = (int[]) this.f658b.clone();
            oVar.f659c = (Object[]) this.f659c.clone();
            return oVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void c() {
        int i = this.f660d;
        int[] iArr = this.f658b;
        Object[] objArr = this.f659c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f657a = false;
        this.f660d = i2;
    }

    public Object d(int i) {
        return e(i, null);
    }

    public Object e(int i, Object obj) {
        int a2 = j.a(this.f658b, this.f660d, i);
        if (a2 >= 0) {
            Object[] objArr = this.f659c;
            if (objArr[a2] != e) {
                return objArr[a2];
            }
        }
        return obj;
    }

    public int f(int i) {
        if (this.f657a) {
            c();
        }
        return this.f658b[i];
    }

    public void g(int i, Object obj) {
        int a2 = j.a(this.f658b, this.f660d, i);
        if (a2 >= 0) {
            this.f659c[a2] = obj;
            return;
        }
        int i2 = ~a2;
        if (i2 < this.f660d) {
            Object[] objArr = this.f659c;
            if (objArr[i2] == e) {
                this.f658b[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.f657a && this.f660d >= this.f658b.length) {
            c();
            i2 = ~j.a(this.f658b, this.f660d, i);
        }
        int i3 = this.f660d;
        if (i3 >= this.f658b.length) {
            int e2 = j.e(i3 + 1);
            int[] iArr = new int[e2];
            Object[] objArr2 = new Object[e2];
            int[] iArr2 = this.f658b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f659c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f658b = iArr;
            this.f659c = objArr2;
        }
        int i4 = this.f660d;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.f658b;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            Object[] objArr4 = this.f659c;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f660d - i2);
        }
        this.f658b[i2] = i;
        this.f659c[i2] = obj;
        this.f660d++;
    }

    public int h() {
        if (this.f657a) {
            c();
        }
        return this.f660d;
    }

    public Object i(int i) {
        if (this.f657a) {
            c();
        }
        return this.f659c[i];
    }

    public String toString() {
        if (h() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f660d * 28);
        sb.append('{');
        for (int i = 0; i < this.f660d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(f(i));
            sb.append('=');
            Object i2 = i(i);
            if (i2 != this) {
                sb.append(i2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
