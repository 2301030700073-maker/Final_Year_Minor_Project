package androidx.lifecycle;

import b.j.InterfaceC0135e;
import b.j.InterfaceC0138h;
import b.j.j;

/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0135e f127a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0138h f128b;

    public FullLifecycleObserverAdapter(InterfaceC0135e interfaceC0135e, InterfaceC0138h interfaceC0138h) {
        this.f127a = interfaceC0135e;
        this.f128b = interfaceC0138h;
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        switch (lifecycle$Event) {
            case ON_CREATE:
                this.f127a.c(jVar);
                break;
            case ON_START:
                this.f127a.g(jVar);
                break;
            case ON_RESUME:
                this.f127a.a(jVar);
                break;
            case ON_PAUSE:
                this.f127a.e(jVar);
                break;
            case ON_STOP:
                this.f127a.f(jVar);
                break;
            case ON_DESTROY:
                this.f127a.b(jVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        InterfaceC0138h interfaceC0138h = this.f128b;
        if (interfaceC0138h != null) {
            interfaceC0138h.d(jVar, lifecycle$Event);
        }
    }
}
