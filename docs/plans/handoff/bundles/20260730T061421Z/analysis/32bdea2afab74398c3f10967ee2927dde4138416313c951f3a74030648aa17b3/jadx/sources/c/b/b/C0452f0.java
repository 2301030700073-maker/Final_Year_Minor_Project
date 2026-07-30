package c.b.b;

/* renamed from: c.b.b.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0452f0 implements B0 {

    /* renamed from: b, reason: collision with root package name */
    public static final InterfaceC0466m0 f3187b = new C0448d0();

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0466m0 f3188a;

    public C0452f0() {
        InterfaceC0466m0 interfaceC0466m0;
        InterfaceC0466m0[] interfaceC0466m0Arr = new InterfaceC0466m0[2];
        interfaceC0466m0Arr[0] = E.f3117a;
        try {
            interfaceC0466m0 = (InterfaceC0466m0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC0466m0 = f3187b;
        }
        interfaceC0466m0Arr[1] = interfaceC0466m0;
        C0450e0 c0450e0 = new C0450e0(interfaceC0466m0Arr);
        P.b(c0450e0, "messageInfoFactory");
        this.f3188a = c0450e0;
    }
}
