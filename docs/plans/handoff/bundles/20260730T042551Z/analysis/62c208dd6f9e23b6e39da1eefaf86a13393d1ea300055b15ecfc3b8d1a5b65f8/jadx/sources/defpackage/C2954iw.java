package defpackage;

import defpackage.InterfaceC0118Bd;

/* renamed from: iw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2954iw<T> implements InterfaceC3655ry<T>, InterfaceC0118Bd<T> {

    /* renamed from: do, reason: not valid java name */
    public static final C3400ne f13594do = new C3400ne(5);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3608r9 f13595do = new C3608r9(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0118Bd.Cdo<T> f13596do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile InterfaceC3655ry<T> f13597do;

    public C2954iw(C3400ne c3400ne, InterfaceC3655ry interfaceC3655ry) {
        this.f13596do = c3400ne;
        this.f13597do = interfaceC3655ry;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6983do(InterfaceC0118Bd.Cdo<T> cdo) {
        InterfaceC3655ry<T> interfaceC3655ry;
        InterfaceC3655ry<T> interfaceC3655ry2;
        InterfaceC3655ry<T> interfaceC3655ry3 = this.f13597do;
        C3608r9 c3608r9 = f13595do;
        if (interfaceC3655ry3 != c3608r9) {
            cdo.mo192new(interfaceC3655ry3);
            return;
        }
        synchronized (this) {
            interfaceC3655ry = this.f13597do;
            if (interfaceC3655ry != c3608r9) {
                interfaceC3655ry2 = interfaceC3655ry;
            } else {
                this.f13596do = new C4031yJ(this.f13596do, cdo);
                interfaceC3655ry2 = null;
            }
        }
        if (interfaceC3655ry2 != null) {
            cdo.mo192new(interfaceC3655ry);
        }
    }

    @Override // defpackage.InterfaceC3655ry
    public final T get() {
        return this.f13597do.get();
    }
}
