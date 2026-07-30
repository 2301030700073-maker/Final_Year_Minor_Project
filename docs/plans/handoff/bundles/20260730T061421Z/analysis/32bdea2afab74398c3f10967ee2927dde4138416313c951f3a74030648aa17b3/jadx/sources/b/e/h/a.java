package b.e.h;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f740a;

    /* renamed from: b, reason: collision with root package name */
    public int f741b;

    public a(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f740a = new Object[i];
    }

    public Object a() {
        int i = this.f741b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f740a;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f741b = i - 1;
        return obj;
    }

    public boolean b(Object obj) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.f741b) {
                z = false;
                break;
            }
            if (this.f740a[i] == obj) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i2 = this.f741b;
        Object[] objArr = this.f740a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = obj;
        this.f741b = i2 + 1;
        return true;
    }
}
