package c.b.b;

/* renamed from: c.b.b.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0450e0 implements InterfaceC0466m0 {

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0466m0[] f3183a;

    public C0450e0(InterfaceC0466m0... interfaceC0466m0Arr) {
        this.f3183a = interfaceC0466m0Arr;
    }

    @Override // c.b.b.InterfaceC0466m0
    public boolean a(Class cls) {
        for (InterfaceC0466m0 interfaceC0466m0 : this.f3183a) {
            if (interfaceC0466m0.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // c.b.b.InterfaceC0466m0
    public InterfaceC0464l0 b(Class cls) {
        for (InterfaceC0466m0 interfaceC0466m0 : this.f3183a) {
            if (interfaceC0466m0.a(cls)) {
                return interfaceC0466m0.b(cls);
            }
        }
        StringBuilder f = c.a.c.a.a.f("No factory is available for message type: ");
        f.append(cls.getName());
        throw new UnsupportedOperationException(f.toString());
    }
}
