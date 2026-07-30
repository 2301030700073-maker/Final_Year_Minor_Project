package defpackage;

/* renamed from: dx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2662dx<T> extends C0781bx {

    /* renamed from: if, reason: not valid java name */
    public final Object f12558if;

    public C2662dx(int i) {
        super(i);
        this.f12558if = new Object();
    }

    @Override // defpackage.C0781bx
    /* renamed from: do */
    public final T mo4867do() {
        T t;
        synchronized (this.f12558if) {
            t = (T) super.mo4867do();
        }
        return t;
    }

    @Override // defpackage.C0781bx
    /* renamed from: if */
    public final boolean mo4868if(T t) {
        boolean mo4868if;
        synchronized (this.f12558if) {
            mo4868if = super.mo4868if(t);
        }
        return mo4868if;
    }
}
