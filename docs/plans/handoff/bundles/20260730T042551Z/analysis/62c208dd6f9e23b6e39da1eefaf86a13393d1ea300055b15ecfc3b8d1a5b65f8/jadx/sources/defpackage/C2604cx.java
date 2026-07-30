package defpackage;

/* renamed from: cx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2604cx<T> {

    /* renamed from: do, reason: not valid java name */
    public int f12408do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f12409do = new Object[256];

    /* renamed from: do, reason: not valid java name */
    public final T m6401do() {
        int i = this.f12408do;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f12409do;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f12408do = i - 1;
        return t;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6402if(G2 g2) {
        int i = this.f12408do;
        Object[] objArr = this.f12409do;
        if (i < objArr.length) {
            objArr[i] = g2;
            this.f12408do = i + 1;
        }
    }
}
