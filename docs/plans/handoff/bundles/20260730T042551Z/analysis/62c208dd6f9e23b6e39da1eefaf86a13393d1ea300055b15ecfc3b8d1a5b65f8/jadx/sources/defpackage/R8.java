package defpackage;

/* loaded from: classes3.dex */
public final class R8<T> extends C2713ep implements Q8<T> {
    public R8(InterfaceC0634Yo interfaceC0634Yo) {
        super(true);
        g(interfaceC0634Yo);
    }

    @Override // defpackage.Q8
    public final boolean a(Throwable th) {
        Object u;
        U8 u8 = new U8(false, th);
        do {
            u = u(c(), u8);
            if (u == O4.f2560new) {
                return false;
            }
            if (u == O4.f2578try) {
                break;
            }
        } while (u == O4.f2525case);
        return true;
    }

    @Override // defpackage.InterfaceC0140Cd
    /* renamed from: class */
    public final T mo278class() {
        return (T) m6582protected();
    }

    @Override // defpackage.Q8
    /* renamed from: throws */
    public final boolean mo1831throws(T t) {
        Object u;
        do {
            u = u(c(), t);
            if (u == O4.f2560new) {
                return false;
            }
            if (u == O4.f2578try) {
                break;
            }
        } while (u == O4.f2525case);
        return true;
    }
}
